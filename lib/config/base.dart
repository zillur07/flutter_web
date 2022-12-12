import 'package:get/get.dart';

import '../controller/category_controller.dart';

class Base {
  final categoryC = Get.put(CategoryController());
}
