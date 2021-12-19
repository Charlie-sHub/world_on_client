import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';

class PicturesSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _state = context.read<ExperienceManagementFormBloc>().state;
    return _state.experience.imageAssetsOption.fold(
      () => Column(
        children: [
          IconButton(
            iconSize: 100,
            icon: const Icon(
              Icons.photo_camera,
            ),
            onPressed: () async => _pickImages(
              context,
              _state,
            ),
          ),
          if (_state.showErrorMessages && _state.experience.imageURLs.isEmpty)
            Text(
              S.of(context).experiencePictureSelection,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            )
          else
            Container(),
        ],
      ),
      (imageAssets) => SizedBox(
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
                  (index) => Card(
                    child: AssetThumb(
                      asset: imageAssets[index],
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              iconSize: 40,
              icon: const Icon(
                Icons.photo_camera,
              ),
              onPressed: () async => _pickImages(
                context,
                _state,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _pickImages(
    BuildContext context,
    ExperienceManagementFormState state,
  ) async {
    try {
      MultiImagePicker.pickImages(
        maxImages: 15,
        enableCamera: true,
        selectedAssets: state.experience.imageAssetsOption.fold(
          () => [],
          id,
        ),
        materialOptions: MaterialOptions(
          actionBarTitle: "World On",
          allViewTitle: S.of(context).multiImagePickerAllViewTitle,
          useDetailsView: false,
          actionBarColor: "#302B27",
          actionBarTitleColor: "#FCA311",
          selectCircleStrokeColor: "#FCA311",
          statusBarColor: "#000000",
        ),
      ).then(
        (imagesPicked) => context.read<ExperienceManagementFormBloc>().add(
              ExperienceManagementFormEvent.imagesChanged(
                imagesPicked,
              ),
            ),
      );
    } on Exception catch (error) {
      // This try-catch only exists to control for when the user cancels the selection
      getIt<Logger>().e("Exception: $error");
    }
  }
}
