import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/experience_management/experience_editing_form/experience_editing_form_bloc.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class OriginalPicturesGridView extends StatelessWidget {
  const OriginalPicturesGridView({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      crossAxisCount: 3,
      children: List.generate(
        experience.imageURLs.length,
        (index) {
          final _imageURL = experience.imageURLs.elementAt(index);
          return Stack(
            children: [
              Image(
                image: NetworkImage(
                  _imageURL,
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.delete_forever_rounded,
                  color: WorldOnColors.red,
                ),
                onPressed: () {
                  return context.read<ExperienceEditingFormBloc>().add(
                        ExperienceEditingFormEvent.imageDeleted(_imageURL),
                      );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
