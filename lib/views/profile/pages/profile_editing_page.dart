import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/error/critical_error_display.dart';
import 'package:worldon/views/profile/widgets/profile_editing_form/profile_editing_form.dart';

class ProfileEditingPage extends StatelessWidget {
  final User user;

  const ProfileEditingPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight - 15),
            child: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(
                S.of(context).editingProfileTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: WorldOnColors.accent,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          body: BlocProvider(
            create: (context) => getIt<ProfileEditingFormBloc>()
              ..add(
                ProfileEditingFormEvent.initialized(user),
              ),
            child: user.failureOption.fold(
              () =>
                  BlocConsumer<ProfileEditingFormBloc, ProfileEditingFormState>(
                listenWhen: (previous, current) =>
                    previous.failureOrSuccessOption !=
                    current.failureOrSuccessOption,
                listener: (context, state) => state.failureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold(
                    (failure) => _onFailure(failure, context),
                    (_) => _onSuccess(context),
                  ),
                ),
                // For some reason the form doesn't properly initialize when going to the form directly
                // instead of folding the failure option of the state's user
                // So the initial values of the form are all value failures due to the empty user of the first state
                // Sending the user and using its values solves the problems
                // but it has the potential of leading to more errors in the future
                // as the user here is not technically the one in the state
                // It shouldn't be a problem for now, but still.
                builder: (context, state) => ProfileEditingForm(user: user),
              ),
              (valueFailure) => InkWell(
                onTap: () async => context.router.pop(),
                child: CriticalErrorDisplay(
                  failure: Failure.value(valueFailure),
                ),
              ),
            ),
          ),
        ),
      );

  Future _onFailure(Failure failure, BuildContext context) =>
      FlushbarHelper.createError(
        duration: const Duration(seconds: 2),
        message: failure.maybeMap(
          coreData: (failure) => failure.coreDataFailure.maybeMap(
            serverError: (failure) => failure.errorString,
            emailAlreadyInUse: (_) => S.of(context).emailAlreadyInUse,
            usernameAlreadyInUse: (_) => S.of(context).usernameAlreadyInUse,
            orElse: () => S.of(context).unknownError,
          ),
          coreDomain: (failure) => failure.coreDomainFailure.maybeMap(
            unAuthorizedError: (_) => S.of(context).unauthorizedError,
            orElse: () => S.of(context).unknownError,
          ),
          orElse: () => S.of(context).unknownError,
        ),
      ).show(context);

  void _onSuccess(BuildContext context) {
    context.router.pop();
    context.read<AuthenticationBloc>().add(
          const AuthenticationEvent.authenticationCheckRequested(),
        );
  }
}
