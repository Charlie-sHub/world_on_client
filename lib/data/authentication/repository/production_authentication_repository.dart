import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

@LazySingleton(as: AuthenticationRepositoryInterface, env: [Environment.prod])
class ProductionAuthenticationRepository implements AuthenticationRepositoryInterface {
  @override
  Future<Option<User>> getLoggedInUser() {
    // TODO: implement getLoggedInUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> logIn(User user) {
    // TODO: implement logIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> logInGoogle() {
    // TODO: implement logInGoogle
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> register(User user) {
    // TODO: implement register
    // Save the User imageFile by assigning it an unique name with uuid and maybe the username
    // Save the downloadURL to the imageURL field of the user then save the user
    // https://www.filledstacks.com/post/firebase-cloud-storage-in-flutter/
    // https://stackoverflow.com/questions/60514159/how-to-upload-image-to-firebase-storage-save-image-url-to-firebase-database-to
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> registerGoogle() {
    // TODO: implement registerGoogle
    throw UnimplementedError();
  }
}
