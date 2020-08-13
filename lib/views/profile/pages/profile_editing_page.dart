import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/string_constants.dart';
import 'package:worldon/views/profile/widget/profile_editing_form/profile_editing_form.dart';

class ProfileEditingPage extends StatelessWidget {
  final User user;

  const ProfileEditingPage({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Editing Account",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: BlocProvider(
        create: (context) =>
        getIt<ProfileEditingFormBloc>()
          ..add(
            const ProfileEditingFormEvent.initialized(),
          ),
        child: BlocConsumer<ProfileEditingFormBloc, ProfileEditingFormState>(
          listener: (context, state) =>
            state.failureOrSuccessOption.fold(
                () => null,
                (either) =>
                either.fold(
                    (failure) => _onFailure(failure, context),
                    (_) => _onSuccess(context),
                ),
            ),
          builder: (context, state) => const ProfileEditingForm(),
        ),
      ),
    );
  }
  
  Future _onFailure(Failure failure, BuildContext context) {
    return FlushbarHelper.createError(
      duration: const Duration(seconds: 2),
      message: failure.maybeMap(
        coreData: (failure) =>
          failure.coreDataFailure.maybeMap(
            serverError: (failure) => failure.errorString,
            emailAlreadyInUse: (_) => "The email is already in use",
            usernameAlreadyInUse: (_) => "The username is already in use",
            orElse: () => StringConst.unknownError,
          ),
        coreDomain: (failure) =>
          failure.coreDomainFailure.maybeMap(
            unAuthorizedError: (_) => StringConst.unauthorizedError,
            orElse: () => StringConst.unknownError,
          ),
        orElse: () => StringConst.unknownError,
      ),
    ).show(context);
  }
  
  void _onSuccess(BuildContext context) {
    context.navigator.pop();
    context.bloc<AuthenticationBloc>().add(const AuthenticationEvent.authenticationCheckRequested());
  }
}
