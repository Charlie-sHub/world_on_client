import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/world_on_cached_image.dart';

class OriginalPicturesGridView extends StatelessWidget {
  const OriginalPicturesGridView({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ExperienceManagementFormBloc, ExperienceManagementFormState>(
        buildWhen: (previous, current) =>
            previous.experience.imageURLs != current.experience.imageURLs,
        builder: (context, state) {
          final imageURLs = state.experience.imageURLs;
          if (imageURLs.isNotEmpty) {
            return GridView.count(
              padding: const EdgeInsets.all(8),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              crossAxisCount: 3,
              children: List.generate(
                imageURLs.length,
                (index) {
                  final imageURL = imageURLs.elementAt(index);
                  return Card(
                    elevation: 5,
                    color: WorldOnColors.background,
                    child: Stack(
                      children: [
                        Center(
                          child: WorldOnCachedImage(
                            imageURL: imageURL,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 35,
                            child: IconButton(
                              icon: const Icon(
                                Icons.delete_forever_rounded,
                                color: WorldOnColors.red,
                                size: 35,
                              ),
                              onPressed: () => context
                                  .read<ExperienceManagementFormBloc>()
                                  .add(
                                    ExperienceManagementFormEvent.imageDeleted(
                                      imageURL,
                                    ),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            return Container();
          }
        },
      );
}
