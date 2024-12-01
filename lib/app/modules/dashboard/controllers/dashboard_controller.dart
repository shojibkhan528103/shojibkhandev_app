import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  var storyId = 0.obs;
  var storyTitle = ''.obs;
  var storyData = ''.obs;

  // Method to set the story data
  void setStoryData(int id, String title, String story) {
    storyId.value = id;
    storyTitle.value = title;
    storyData.value = story;
  }

  void increment() => count.value++;
}
