import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/tag_management/tag_card_actor/tag_card_actor_bloc.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

@Deprecated("Use the SimpleTagCardBuilder instead")
class TagCard extends StatelessWidget {
  final Tag tag;
  
  const TagCard({
    Key? key,
    required this.tag,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TagCardActorBloc>()
        ..add(
          TagCardActorEvent.initialized(tag),
        ),
      child: BlocConsumer<TagCardActorBloc, TagCardActorState>(
        listener: _tagCardListener,
        builder: (context, state) => Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: WorldOnColors.blue,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Text(
              tag.name.getOrCrash(),
              style: const TextStyle(
                color: WorldOnColors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
  
  void _tagCardListener(BuildContext context, TagCardActorState state) => state.maybeMap(
    additionFailure: (state) => FlushbarHelper.createError(
      duration: const Duration(seconds: 2),
      message: state.failure.maybeMap(
        coreData: (failure) => failure.coreDataFailure.maybeMap(
          serverError: (failure) => failure.errorString,
          orElse: () => S.of(context).unknownError,
        ),
        orElse: () => S.of(context).unknownError,
      ),
    ).show(context),
    dismissalFailure: (state) => FlushbarHelper.createError(
      duration: const Duration(seconds: 2),
      message: state.failure.maybeMap(
        coreData: (failure) => failure.coreDataFailure.maybeMap(
          serverError: (failure) => failure.errorString,
          orElse: () => S.of(context).unknownError,
        ),
        orElse: () => S.of(context).unknownError,
      ),
    ).show(context),
    orElse: () {},
  );
}
