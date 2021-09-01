import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:worldon/application/comments/comment_form/comment_form_bloc.dart';
import 'package:worldon/application/comments/comment_watcher/comment_watcher_bloc.dart';
import 'package:worldon/application/core/watch_current_user/watch_current_user_bloc.dart';
import 'package:worldon/domain/core/entities/user/simple_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
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
            user: context.read<WatchCurrentUserBloc>().state.maybeMap(
                  loadSuccess: (successState) => successState.user.simplified,
                  orElse: () => SimpleUser.empty(),
                ),
            commentOption: none(),
            experienceId: experienceId,
          ),
        ),
      child: BlocConsumer<CommentFormBloc, CommentFormState>(
        listenWhen: (previous, current) =>
            previous.failureOrSuccessOption != current.failureOrSuccessOption,
        listener: (context, state) => _commentFormListener(
          state,
          context,
          _textEditingController,
        ),
        builder: (context, state) => Form(
          autovalidateMode: context.read<CommentFormBloc>().state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: TextFormField(
              minLines: 2,
              maxLines: 6,
              controller: _textEditingController,
              maxLength: CommentContent.maxLength,
              onChanged: (value) => context.read<CommentFormBloc>().add(
                    CommentFormEvent.contentChanged(value.trim()),
                  ),
              validator: (_) => context.read<CommentFormBloc>().state.comment.content.value.fold(
                    (failure) => failure.maybeMap(
                      emptyString: (_) => S.of(context).commentEmptyString,
                      stringExceedsLength: (_) => S.of(context).commentStringExceedsLength,
                      stringWithInvalidCharacters: (_) =>
                          S.of(context).commentStringWithInvalidCharacters,
                      orElse: () => S.of(context).unknownError,
                    ),
                    (_) => null,
                  ),
              decoration: InputDecoration(
                labelText: S.of(context).comment,
                border: InputBorder.none,
                suffixIcon: IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.send_rounded,
                    size: 30,
                  ),
                  onPressed: () {
                    context.read<CommentFormBloc>().add(
                          CommentFormEvent.submitted(
                            context.read<WatchCurrentUserBloc>().state.maybeMap(
                                  loadSuccess: (successState) => successState.user,
                                  orElse: () => User.empty(),
                                ),
                          ),
                        );
                    _textEditingController.clear();
                  },
                  color: WorldOnColors.primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _commentFormListener(CommentFormState state, BuildContext context,
          TextEditingController _textEditingController) =>
      state.failureOrSuccessOption.fold(
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
                    user: context.read<WatchCurrentUserBloc>().state.maybeMap(
                          loadSuccess: (successState) => successState.user.simplified,
                          orElse: () => SimpleUser.empty(),
                        ),
                    commentOption: none(),
                    experienceId: experienceId,
                  ),
                );
            context.read<CommentWatcherBloc>().add(
                  CommentWatcherEvent.watchExperienceCommentsStarted(experienceId),
                );
          },
        ),
      );
}
