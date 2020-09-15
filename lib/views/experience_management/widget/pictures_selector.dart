import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';

class PicturesSelector extends StatelessWidget {
  final _logger = Logger();

  @override
  Widget build(BuildContext context) {
    return context.bloc<ExperienceManagementFormBloc>().state.experience.imageAssetsOption.fold(
          () => Column(
            children: [
              IconButton(
                iconSize: 100,
                icon: const Icon(
                  Icons.photo_camera,
                ),
                onPressed: () async => _pickImages(context),
              ),
              if (context.bloc<ExperienceManagementFormBloc>().state.showErrorMessages)
                const Text(
                  "Please select at least one picture",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red),
                )
              else
                Container(),
            ],
          ),
          (imageAssets) => Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: GridView.count(
                    padding: const EdgeInsets.all(10),
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    crossAxisCount: 3,
                    children: List.generate(
                      imageAssets.length,
                      (index) {
                        return Card(
                          shape: const RoundedRectangleBorder(),
                          child: AssetThumb(
                            asset: imageAssets[index],
                            width: 150,
                            height: 150,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                IconButton(
                  iconSize: 40,
                  icon: const Icon(
                    Icons.photo_camera,
                  ),
                  onPressed: () async => _pickImages(context),
                ),
              ],
            ),
          ),
        );
  }

  Future _pickImages(BuildContext context) async {
    try {
      final imagesPicked = await MultiImagePicker.pickImages(
        maxImages: 15,
        enableCamera: true,
        selectedAssets: context.bloc<ExperienceManagementFormBloc>().state.experience.imageAssetsOption.fold(
              () => [],
              id,
            ),
        materialOptions: const MaterialOptions(
          actionBarTitle: "World On",
          allViewTitle: "All Photos",
          useDetailsView: false,
        ),
      );
      context.bloc<ExperienceManagementFormBloc>().add(ExperienceManagementFormEvent.imagesChanged(imagesPicked));
    } on Exception catch (e) {
      // This try-catch only exists to control for when the user cancels the selection
      _logger.e(e.toString());
    }
  }
}
