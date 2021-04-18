import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:worldon/application/comments/comment_form/comment_form_bloc.dart';
import 'package:worldon/application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class CommentForm extends HookWidget {
  final UniqueId experienceId;

  const CommentForm({
    Key? key,
    required this.experienceId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textEditingController = useTextEditingController();
    return BlocProvider(
      create: (context) => getIt<CommentFormBloc>()
        ..add(
          CommentFormEvent.initialized(
            commentOption: none(),
            experienceId: experienceId,
          ),
        ),
      child: BlocConsumer<CommentFormBloc, CommentFormState>(
        listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
        listener: (context, state) => _commentFormListener(
          state,
          context,
          _textEditingController,
        ),
        builder: (context, state) => Form(
          autovalidateMode: context.read<CommentFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextFormField(
                  minLines: 2,
                  maxLines: 5,
                  controller: _textEditingController,
                  maxLength: CommentContent.maxLength,
                  onChanged: (value) => context.read<CommentFormBloc>().add(
                        CommentFormEvent.contentChanged(value.trim()),
                      ),
                  validator: (_) => context.read<CommentFormBloc>().state.comment.content.value.fold(
                        (failure) => failure.maybeMap(
                          emptyString: (_) => S.of(context).commentEmptyString,
                          stringExceedsLength: (_) => S.of(context).commentStringExceedsLength,
                          stringWithInvalidCharacters: (_) => S.of(context).commentStringWithInvalidCharacters,
                          orElse: () => S.of(context).unknownError,
                        ),
                        (_) => null,
                      ),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.send_rounded,
                        size: 35,
                      ),
                      onPressed: () {
                        context.read<CommentFormBloc>().add(
                              const CommentFormEvent.submitted(),
                            );
                        _textEditingController.clear();
                      },
                      color: WorldOnColors.primary,
                    ),
                    labelText: S.of(context).comment,
                    prefixIcon: const Icon(Icons.comment),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _commentFormListener(CommentFormState state, BuildContext context, TextEditingController _textEditingController) => state.failureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failure) => FlushbarHelper.createError(
            message: failure.maybeMap(
              coreData: (_coreDataFailure) => _coreDataFailure.coreDataFailure.maybeMap(
                serverError: (failure) => failure.errorString,
                orElse: () => S.of(context).unknownCoreDataError,
              ),
              orElse: () => S.of(context).unknownError,
            ),
          ),
          (_) {
            _textEditingController.clear();
            context.read<CommentFormBloc>().add(
                  CommentFormEvent.initialized(
                    commentOption: none(),
                    experienceId: experienceId,
                  ),
                );
            FlushbarHelper.createSuccess(
              duration: const Duration(seconds: 2),
              message: S.of(context).commentPostSuccess,
            ).show(context);
            context.read<CommentWatcherBloc>().add(
                  CommentWatcherEvent.watchExperienceCommentsStarted(experienceId),
                );
          },
        ),
      );
}
