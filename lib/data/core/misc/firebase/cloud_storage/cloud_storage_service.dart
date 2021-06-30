import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:worldon/data/core/misc/firebase/cloud_storage/storage_folder_enum.dart';

@lazySingleton
class CloudStorageService {
  final _storageInstance = FirebaseStorage.instance;

  Future<void> deleteImage(String url) async => _storageInstance.refFromURL(url).delete();

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
    final _imageByteData = await imageToUpload.getByteData(quality: 40);
    final _uploadTask = _firebaseStorageReference.putData(_imageByteData.buffer.asUint8List());
    final _storageSnapshot = await _uploadTask;
    return _storageSnapshot.ref.getDownloadURL();
  }
}
