import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/core/share_experience_internally/share_experience_internally_bloc.dart';
import 'package:worldon/application/search/search_to_share/search_to_share_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/internal_share/internal_share_button.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/internal_share/internal_share_form.dart';
import 'package:worldon/views/core/widgets/cards/experience_card/internal_share/shareable_results_view.dart';

import '../../../../../injection.dart';

class ShareInternallyButton extends StatelessWidget {
  final Experience experience;

  const ShareInternallyButton({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.near_me_rounded,
        color: WorldOnColors.white,
        size: 25,
      ),
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(),
      // Select users by tapping (adding the user added/removed event)
      // Show what users has been selected on the UI
      // Add the shared event to the bloc one the shared button is pressed
      onPressed: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25),
            ),
          ),
          builder: (context) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => getIt<SearchToShareBloc>()
                      ..add(
                        const SearchToShareEvent.initialized(),
                      ),
                  ),
                  BlocProvider(
                    create: (context) => getIt<ShareExperienceInternallyBloc>()
                      ..add(
                        ShareExperienceInternallyEvent.initialized(experience),
                      ),
                  ),
                ],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InternalShareForm(),
                    ShareableResultsView(),
                    InternalShareButton(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
