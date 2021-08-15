import 'package:get/get.dart';

class NavigationController extends GetxController {
  var updateValue = 0.obs;

  @override
  void onInit() {
    super.onInit();
    updateValue(0);
  }

  updateIndex(int i) {
    updateValue.value = i;
  }
}
