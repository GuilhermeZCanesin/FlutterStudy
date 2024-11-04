import 'package:get/get.dart';
import 'package:the_bils_app/controllers/counter.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() => Controller());
    // TODO: implement dependencies
  }
}
