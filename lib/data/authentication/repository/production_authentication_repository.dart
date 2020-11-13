import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/authentication/failures/authentication_data_failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_user_mapper.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/authentication/failures/authentication_domain_failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart' as entity;
import 'package:worldon/domain/core/validation/objects/email_address.dart';

@LazySingleton(as: AuthenticationRepositoryInterface, env: [Environment.prod])
class ProductionAuthenticationRepository implements AuthenticationRepositoryInterface {
  final _logger = Logger();
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  ProductionAuthenticationRepository(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<Failure, Unit>> register(entity.User user) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: user.email.getOrCrash(),
        password: user.password.getOrCrash(),
      );
      final jsonUser = UserDto.fromDomain(user).toJson();
      await FirebaseFirestore.instance.collection("users").add(jsonUser);
      // TODO: implement image storage
      // Save the User imageFile by assigning it an unique name with uuid and maybe the username
      // Save the downloadURL to the imageURL field of the user then save the user
      // https://www.filledstacks.com/post/firebase-cloud-storage-in-flutter/
      // https://stackoverflow.com/questions/60514159/how-to-upload-image-to-firebase-storage-save-image-url-to-firebase-database-to
      return right(unit);
    } on FirebaseAuthException catch (_firebaseException) {
      if (_firebaseException.code == "ERROR_EMAIL_ALREADY_IN_USE") {
        return left(Failure.coreData(CoreDataFailure.emailAlreadyInUse(email: EmailAddress(_firebaseException.email))));
      } else {
        return left(Failure.coreData(CoreDataFailure.serverError(errorString: _firebaseException.message)));
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> logIn(entity.User user) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: user.email.getOrCrash(),
        password: user.password.getOrCrash(),
      );
      return right(unit);
    } on FirebaseAuthException catch (_firebaseException) {
      if (_firebaseException.code == "ERROR_WRONG_PASSWORD" || _firebaseException.code == "ERROR_USER_NOT_FOUND") {
        return left(const Failure.authenticationData(AuthenticationDataFailure.invalidCredentials()));
      } else {
        return left(Failure.coreData(CoreDataFailure.serverError(errorString: _firebaseException.message)));
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> logInGoogle() async {
    try {
      final _googleUser = await _googleSignIn.signIn();
      if (_googleUser == null) {
        return left(const Failure.authenticationDomain(AuthenticationDomainFailure.cancelledByUser()));
      }
      final _googleAuthentication = await _googleUser.authentication;
      final _authenticationCredential = GoogleAuthProvider.credential(
        idToken: _googleAuthentication.idToken,
        accessToken: _googleAuthentication.accessToken,
      );
      await _firebaseAuth.signInWithCredential(_authenticationCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const Failure.authenticationDomain(AuthenticationDomainFailure.cancelledByUser()));
    }
  }

  @override
  Future<Option<entity.User>> getLoggedInUser() async {
    final _user = await _firebaseAuth.currentUser?.toDomain();
    return optionOf(_user);
  }

  @override
  Future<Either<Failure, Unit>> logOut() async {
    try {
      Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
      return right(unit);
    } catch (e) {
      return left(const Failure.coreData(CoreDataFailure.serverError(errorString: "Unknown server error")));
    }
  }

  @override
  Future<Either<Failure, Unit>> registerGoogle() {
    // TODO: implement registerGoogle
    throw UnimplementedError();
  }
}
