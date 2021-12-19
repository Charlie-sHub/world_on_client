import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/share/search_to_share/search_to_share_bloc.dart';
import 'package:worldon/application/share/share_experience_internally/share_experience_internally_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/share/widget/internal_share_button.dart';
import 'package:worldon/views/share/widget/internal_share_form.dart';
import 'package:worldon/views/share/widget/shareable_results_view.dart';

class InternalShareSheet extends StatelessWidget {
  final Experience experience;

  const InternalShareSheet({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
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
      );
}
