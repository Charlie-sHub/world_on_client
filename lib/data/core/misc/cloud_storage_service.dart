import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

@injectable
class CloudStorageService {
  Future<String> uploadFileImage({@required File imageToUpload, @required String name, @required String folder}) async {
    final _firebaseStorageReference = FirebaseStorage.instance.ref().child(folder).child(name);
    final _uploadTask = _firebaseStorageReference.putFile(imageToUpload);
    final _storageSnapshot = await _uploadTask;
    return _storageSnapshot.ref.getDownloadURL();
  }

  Future<String> uploadAssetImage({@required Asset imageToUpload, @required String name, @required String folder}) async {
    final _firebaseStorageReference = FirebaseStorage.instance.ref().child(folder).child(name);
    final _imageByteData = await imageToUpload.getByteData();
    final _uploadTask = _firebaseStorageReference.putData(_imageByteData.buffer.asUint8List());
    final _storageSnapshot = await _uploadTask;
    return _storageSnapshot.ref.getDownloadURL();
  }
}
