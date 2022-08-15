import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_show_case/experience_management_show_case_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/experience_management/widgets/experience_creation/experience_creation_form.dart';
import 'package:worldon/views/experience_management/widgets/experience_editing/experience_editing_form.dart';

class ExperienceManagementPage extends StatelessWidget {
  const ExperienceManagementPage({
    Key? key,
    required this.experienceOption,
  }) : super(key: key);

  final Option<Experience> experienceOption;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    final difficultyKey = GlobalKey();
    final mapKey = GlobalKey();
    final objectiveFormKey = GlobalKey();
    final tagCreationKey = GlobalKey();
    final keys = [
      difficultyKey,
      mapKey,
      objectiveFormKey,
      tagCreationKey,
    ];
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: BlocProvider.value(
          value: getIt<ExperienceManagementShowCaseBloc>(),
          child: ShowCaseWidget(
            onStart: (_, key) => _onShowCaseStart(
              key,
              difficultyKey,
              scrollController,
              mapKey,
              objectiveFormKey,
              tagCreationKey,
            ),
            onFinish: () {
              // For some reason the bloc can't be found when adding this event
              // It's not really necessary though
              /*
              context.read<ExperienceManagementShowCaseBloc>().add(
                    const ExperienceManagementShowCaseEvent.finished(),
                  );
               */
              scrollController.jumpTo(0);
            },
            builder: Builder(
              builder: (context) => BlocListener<
                  ExperienceManagementShowCaseBloc,
                  ExperienceManagementShowCaseState>(
                listener: (context, state) => state.maybeMap(
                  show: (_) => ShowCaseWidget.of(context).startShowCase(keys),
                  orElse: () => null,
                ),
                child: Scaffold(
                  body: NestedScrollView(
                    dragStartBehavior: DragStartBehavior.down,
                    clipBehavior: Clip.antiAlias,
                    floatHeaderSlivers: true,
                    headerSliverBuilder: (context, innerBoxIsScrolled) => [
                      SliverAppBar(
                        expandedHeight: kToolbarHeight - 15,
                        elevation: 10,
                        centerTitle: true,
                        actions: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.help,
                              size: 25,
                              // color: WorldOnColors.accent,
                            ),
                            onPressed: () => context
                                .read<ExperienceManagementShowCaseBloc>()
                                .add(
                                  const ExperienceManagementShowCaseEvent
                                      .helpButtonPressed(),
                                ),
                          ),
                        ],
                        flexibleSpace: FlexibleSpaceBar(
                          title: Text(
                            experienceOption.fold(
                              () => S.of(context).experienceCreationTitle,
                              (a) => S.of(context).experienceEditingTitle,
                            ),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              color: WorldOnColors.primary,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                    body: BlocProvider.value(
                      value: getIt<ExperienceManagementFormBloc>()
                        ..add(
                          ExperienceManagementFormEvent.initialized(
                            experienceOption,
                          ),
                        ),
                      child: experienceOption.fold(
                        () => ExperienceCreationForm(
                          difficultyShowKey: difficultyKey,
                          mapShowKey: mapKey,
                          objectivesShowKey: objectiveFormKey,
                          tagCreationShowKey: tagCreationKey,
                          scrollController: scrollController,
                        ),
                        (experience) => ExperienceEditingForm(
                          experience: experience,
                          difficultyShowKey: difficultyKey,
                          mapShowKey: mapKey,
                          objectivesShowKey: objectiveFormKey,
                          tagCreationShowKey: tagCreationKey,
                          scrollController: scrollController,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onShowCaseStart(
    GlobalKey<State<StatefulWidget>> key,
    GlobalKey<State<StatefulWidget>> difficultyKey,
    ScrollController scrollController,
    GlobalKey<State<StatefulWidget>> mapKey,
    GlobalKey<State<StatefulWidget>> objectiveFormKey,
    GlobalKey<State<StatefulWidget>> tagCreationKey,
  ) {
    if (key == difficultyKey) {
      scrollController.jumpTo(
        scrollController.position.maxScrollExtent * 0.1,
      );
    } else if (key == mapKey) {
      scrollController.jumpTo(
        scrollController.position.maxScrollExtent * 0.3,
      );
    } else if (key == objectiveFormKey) {
      scrollController.jumpTo(
        scrollController.position.maxScrollExtent * 0.6,
      );
    } else if (key == tagCreationKey) {
      scrollController.jumpTo(
        scrollController.position.maxScrollExtent,
      );
    }
  }
}
