import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AuthenticationController extends GetxController {
  static AuthenticationController outhController = Get.find();

  late Rx<File?> pickedFile;
  File? get profileImage => pickedFile.value;

  pickImageFileFromGallery() async {
    final imageFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      Get.snackbar(
          "Profile Image", "you have successful picked your profile image.");
    }
    pickedFile = Rx<File?>(File(imageFile!.path));
  }

  captureImageFromPhoneCamera() async {
    final imageFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      Get.snackbar(
          "Profile Image", "you have successful capure your profile image.");
    }
    pickedFile = Rx<File?>(File(imageFile!.path));
  }
}
