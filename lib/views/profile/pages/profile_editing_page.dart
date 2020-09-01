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
import 'package:worldon/views/core/widget/error/critical_error_display.dart';
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
        child: user.failureOption.fold(
          () => BlocConsumer<ProfileEditingFormBloc, ProfileEditingFormState>(
            listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
            listener: (context, state) => state.failureOrSuccessOption.fold(
              () => null,
              (either) => either.fold(
                (failure) => _onFailure(failure, context),
                (_) => _onSuccess(context),
              ),
            ),
            // TODO: Find a way to make the form initialize with the state's user
            // For some reason the form doesn't properly initialize when going to the form directly
            // instead of folding the failure option of the state's user
            // So the initial values of the form are all value failures due to the empty user of the first state
            // Sending the user an using its values solves the problems
            // but it has the potential of leading to more errors in the future
            // as the user here is not technically the one in the state
            // It shouldn't be a problem for now, but still.
            builder: (context, state) => ProfileEditingForm(user: user),
          ),
          (valueFailure) => InkWell(
            onTap: () async => context.navigator.pop(),
            child: CriticalErrorDisplay(
              failure: Failure.value(valueFailure),
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
        coreData: (failure) => failure.coreDataFailure.maybeMap(
          serverError: (failure) => failure.errorString,
          emailAlreadyInUse: (_) => "The email is already in use",
          usernameAlreadyInUse: (_) => "The username is already in use",
          orElse: () => StringConst.unknownError,
        ),
        coreDomain: (failure) => failure.coreDomainFailure.maybeMap(
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
