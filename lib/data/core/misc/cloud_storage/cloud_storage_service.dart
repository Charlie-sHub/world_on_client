import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/data/core/misc/cloud_storage/storage_folder_enum.dart';

@injectable
class CloudStorageService {
  final _storageInstance = FirebaseStorage.instance;

  Future<void> deleteImage({
    required String url,
    required StorageFolder folder,
  }) async {
    // TODO: Delete images
  }

  Future<String> uploadFileImage({
    required File imageToUpload,
    required String name,
    required StorageFolder folder,
  }) async {
    final _firebaseStorageReference = _storageInstance.ref().child(folder.value()).child(name);
    final _uploadTask = _firebaseStorageReference.putFile(imageToUpload);
    final _storageSnapshot = await _uploadTask;
    return _storageSnapshot.ref.getDownloadURL();
  }

  Future<String> uploadAssetImage({
    required Asset imageToUpload,
    required String name,
    required StorageFolder folder,
  }) async {
    final _firebaseStorageReference = _storageInstance.ref().child(folder.value()).child(name);
    final _imageByteData = await imageToUpload.getByteData();
    final _uploadTask = _firebaseStorageReference.putData(_imageByteData.buffer.asUint8List());
    final _storageSnapshot = await _uploadTask;
    return _storageSnapshot.ref.getDownloadURL();
  }
}
