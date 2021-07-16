import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class GetLoggedInUser {
  final AuthenticationRepositoryInterface _repository;

  GetLoggedInUser(this._repository);

  Future<Option<User>> call(NoParams params) async {
    return _repository.getLoggedInUser();
  }
// TODO: Check if this could work
// It would be way more elegant to get the up to date user from the data side than from the views one
// I'm not sure about the stream though
// How to i close it? do i even need to
/*
  final CoreRepositoryInterface _coreRepository;

  GetLoggedInUser(this._coreRepository);

  Future<Option<User>> call(NoParams params) async {
    var _aux = none<User>();
    _coreRepository.watchCurrentUser().map(
          (event) => _aux = event.fold(
            (_) => none(),
            (_user) => some(_user),
          ),
        );
    return _aux;
  }
  */
}
