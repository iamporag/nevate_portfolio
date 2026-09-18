import 'package:get/get.dart';

import '../model/tour_list_model.dart';
import 'my_controller.dart';

class MyProjectController extends MyController {
  List<TourListModel> tour = [];

  @override
  void onInit() {
    TourListModel.dummyList.then((value) {
      tour = value;
      update();
    });
    super.onInit();
  }

  void goToDetail() {
    Get.toNamed('/admin/tour/detail');
  }
}
