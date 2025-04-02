import 'package:get/get.dart';

class ImageController extends RxController {
  late double screenWidth;
  late double screenHeight;

  var opacity = 0.0.obs;
  var imageSize = 0.0.obs;
  var topPosition = 0.0.obs;

  static ImageController get to => Get.find();

  void init(double width, double height) {
    screenWidth = width;
    screenHeight = height;
    imageSize.value = (screenWidth * 0.1).clamp(50.0, 200.0);
    topPosition.value = screenHeight * 0.2;
  }

  void animate() {
    Future.delayed(Duration(milliseconds: 500), () {
      opacity.value = 1.0;
      Future.delayed(Duration(seconds: 1), () {
        imageSize.value = (screenWidth * 0.2).clamp(50.0, 200.0);
        topPosition.value = screenHeight * 0.2;
      });
    });
  }
}
