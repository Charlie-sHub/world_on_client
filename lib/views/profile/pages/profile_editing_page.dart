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
import 'package:worldon/views/core/widget/critical_error_display.dart';
import 'package:worldon/views/profile/widget/profile_editing_form/profile_editing_form.dart';

class ProfileEditingPage extends StatelessWidget {
  final User user;

  const ProfileEditingPage({
    Key key,
    @required this.user,
  }) : super(key: key);

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
        create: (context) => getIt<ProfileEditingFormBloc>()
          ..add(
            ProfileEditingFormEvent.initialized(user),
          ),
        child: BlocConsumer<ProfileEditingFormBloc, ProfileEditingFormState>(
          listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
          listener: (context, state) => state.failureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (failure) => _onFailure(failure, context),
              (_) => _onSuccess(context),
            ),
          ),
          builder: (context, state) => state.user.failureOption.fold(
            () => const ProfileEditingForm(),
            // TODO: Make the CriticalErrorDisplay take the function to retry as a parameter
            // That way one will never forget to implement that functionality
            (valueFailure) => InkWell(
              onTap: () async => context.bloc<ProfileEditingFormBloc>().add(
                    // It doesn't make much sense to re try with a failed user
                    // This is almost impossible to happen, but still
                    // The function should be one to go back to the profile page
                    ProfileEditingFormEvent.initialized(context.bloc<ProfileEditingFormBloc>().state.user),
                  ),
              child: CriticalErrorDisplay(
                failure: Failure.value(valueFailure),
              ),
            ),
          ),
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
