import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_management_form/tag_management_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/tag_management/widgets/tag_management_form.dart';

class TagManagementPage extends StatelessWidget {
  final Option<Tag> tagOption;

  const TagManagementPage({
    Key key,
    @required this.tagOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Create a new Tag!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<TagManagementFormBloc>()
          ..add(
            TagManagementFormEvent.initialized(tagOption),
          ),
        child: BlocConsumer<TagManagementFormBloc, TagManagementFormState>(
          listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
          listener: _tagManagementListener,
          // TODO: Optimize with a buildWhen
          builder: (context, state) => TagManagementForm(),
        ),
      ),
    );
  }

  void _tagManagementListener(BuildContext context, TagManagementFormState state) => state.failureOrSuccessOption.fold(
        () => null,
        (either) => either.fold(
          (failure) => failure.maybeMap(
            coreData: (_coreDataFailure) => _coreDataFailure.coreDataFailure.maybeMap(
              nameAlreadyInUse: (_) => FlushbarHelper.createError(
                duration: const Duration(seconds: 2),
                message: "The tag already exists",
              ).show(context),
              serverError: (failure) => FlushbarHelper.createError(
                duration: const Duration(seconds: 2),
                message: failure.errorString,
              ).show(context),
              orElse: () => FlushbarHelper.createError(
                duration: const Duration(seconds: 2),
                message: "Unknown core data error",
              ).show(context),
            ),
            orElse: () => FlushbarHelper.createError(
              duration: const Duration(seconds: 2),
              message: "Unknown error",
            ).show(context),
          ),
          (_) {
            FlushbarHelper.createSuccess(
              duration: const Duration(seconds: 2),
              message: "The Tag was created",
            ).show(context);
            context.bloc<TagManagementFormBloc>().add(
                  TagManagementFormEvent.initialized(none()),
                );
          },
        ),
      );
}
