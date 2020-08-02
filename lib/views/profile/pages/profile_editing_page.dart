import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/profile/profile_editing_form/profile_editing_form_bloc.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/profile/widget/profile_editing_form.dart';

class ProfileEditingPage extends StatelessWidget {
  final User user;

  const ProfileEditingPage({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
        getIt<ProfileEditingFormBloc>()
          ..add(
            const ProfileEditingFormEvent.initialized(),
          ),
        child: const ProfileEditingForm(),
      ),
    );
  }
}
