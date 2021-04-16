import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:worldon/application/tag_management/tag_management_form/tag_management_form_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/tag_management/widgets/tag_management_form.dart';

class TagManagementPage extends HookWidget {
  final Option<Tag> tagOption;
  
  const TagManagementPage({
    Key key,
    @required this.tagOption,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final _textEditingController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).tagCreationTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
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
          listener: (context, state) => _tagManagementListener(
            context,
            state,
            _textEditingController,
          ),
          builder: (context, state) => TagManagementForm(
            textController: _textEditingController,
          ),
        ),
      ),
    );
  }
  
  void _tagManagementListener(BuildContext context,
    TagManagementFormState state,
    TextEditingController _textEditingController,) =>
    state.failureOrSuccessOption.fold(
        () => null,
        (either) => either.fold(
          (failure) => FlushbarHelper.createError(
            message: failure.maybeMap(
              coreData: (_coreDataFailure) => _coreDataFailure.coreDataFailure.maybeMap(
                nameAlreadyInUse: (_) => S.of(context).tagCreationNameAlreadyInUse,
                serverError: (failure) => failure.errorString,
                orElse: () => S.of(context).unknownCoreDataError,
              ),
              orElse: () => S.of(context).unknownError,
            ),
          ),
          (_) {
            _textEditingController.clear();
            context.read<TagManagementFormBloc>().add(
                  TagManagementFormEvent.initialized(none()),
                );
            FlushbarHelper.createSuccess(
              duration: const Duration(seconds: 2),
              message: S.of(context).tagCreationSuccessMessage,
            ).show(context);
          },
      ),
    );
}
