import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/authentication/failures/authentication_data_failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/cloud_storage/cloud_storage_service.dart';
import 'package:worldon/data/core/misc/firebase/cloud_storage/storage_folder_enum.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/data/core/models/user/user_fields.dart';
import 'package:worldon/domain/authentication/failures/authentication_domain_failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart' as entity;
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: AuthenticationRepositoryInterface, env: [Environment.prod])
class ProductionAuthenticationRepository implements AuthenticationRepositoryInterface {
  final Logger _logger;
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  ProductionAuthenticationRepository(
    this._firebaseAuth,
    this._googleSignIn,
    this._firestore,
    this._logger,
  );

  @override
  Future<Either<Failure, Unit>> register(entity.User user) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: user.email.getOrCrash(),
        password: user.password.getOrCrash(),
      );
      final _firebaseUser = _firebaseAuth.currentUser;
      if (_firebaseUser != null) {
        final _imageURL = await getIt<CloudStorageService>().uploadFileImage(
          imageToUpload: user.imageFileOption.getOrElse(() => null)!,
          folder: StorageFolder.users,
          name: _firebaseUser.uid,
        );
        final _userDto = UserDto.fromDomain(
          user.copyWith(
            id: UniqueId.fromUniqueString(
              _firebaseUser.uid,
            ),
            imageURL: _imageURL,
          ),
        );
        await _firestore.userCollection.doc(_firebaseUser.uid).set(_userDto);
        return right(unit);
      } else {
        return left(
          const Failure.coreData(
            CoreDataFailure.serverError(errorString: "Null Firebase user"),
          ),
        );
      }
    } on FirebaseAuthException catch (exception) {
      if (exception.code == "ERROR_EMAIL_ALREADY_IN_USE") {
        return left(
          Failure.coreData(
            CoreDataFailure.emailAlreadyInUse(
              email: EmailAddress(exception.email!),
            ),
          ),
        );
      } else {
        _logger.e(exception.message);
        return left(
          Failure.coreData(
            CoreDataFailure.serverError(errorString: exception.message!),
          ),
        );
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
    } on FirebaseAuthException catch (exception) {
      if (exception.code == "ERROR_WRONG_PASSWORD" || exception.code == "ERROR_USER_NOT_FOUND") {
        return left(
          const Failure.authenticationData(
            AuthenticationDataFailure.invalidCredentials(),
          ),
        );
      } else {
        _logger.e(exception.message);
        return left(
          Failure.coreData(
            CoreDataFailure.serverError(errorString: exception.message!),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, Option<entity.User>>> logInGoogle() async {
    try {
      final _googleUser = await _googleSignIn.signIn();
      if (_googleUser == null) {
        return left(
          const Failure.authenticationDomain(
            AuthenticationDomainFailure.cancelledByUser(),
          ),
        );
      }
      final _userByEmailQuery = await _firestore.userCollection
          .where(
            UserFields.email,
            isEqualTo: _googleUser.email,
          )
          .get();
      if (_userByEmailQuery.docs.isNotEmpty) {
        final _googleAuthentication = await _googleUser.authentication;
        final _authenticationCredential = GoogleAuthProvider.credential(
          idToken: _googleAuthentication.idToken,
          accessToken: _googleAuthentication.accessToken,
        );
        await _firebaseAuth.signInWithCredential(_authenticationCredential);
        return right(none());
      } else {
        final _user = entity.User.empty().copyWith(
          name: Name(_googleUser.displayName ?? ""),
          username: Name(_googleUser.displayName ?? ""),
          email: EmailAddress(_googleUser.email),
          imageURL: _googleUser.photoUrl ?? "",
        );
        return right(some(_user));
      }
    } on FirebaseAuthException catch (_) {
      return left(
        const Failure.authenticationDomain(
          AuthenticationDomainFailure.cancelledByUser(),
        ),
      );
    } on PlatformException catch (exception) {
      _logger.e(exception.message);
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(errorString: exception.message!),
        ),
      );
    }
  }

  @override
  Future<Option<entity.User>> getLoggedInUser() async {
    final _firebaseCurrentUser = _firebaseAuth.currentUser;
    if (_firebaseCurrentUser == null) {
      return none();
    } else {
      final _user = await _firestore.currentUser();
      return some(_user);
    }
  }

  @override
  Future<void> logOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);

  // TODO: Maybe move this to core
  @override
  Future<Either<Failure, Unit>> resetPassword(EmailAddress emailAddress) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(
        email: emailAddress.getOrCrash(),
      );
      return right(unit);
    } on FirebaseAuthException catch (exception) {
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(errorString: exception.message!),
        ),
      );
    } on PlatformException catch (exception) {
      _logger.e(exception.message);
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(errorString: exception.message!),
        ),
      );
    }
  }
}
