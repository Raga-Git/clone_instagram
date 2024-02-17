import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/snap_gram/bindings/snap_gram_binding.dart';
import '../modules/snap_gram/views/snap_gram_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SNAP_GRAM,
      page: () => const SnapGramView(),
      binding: SnapGramBinding(),
    ),
  ];
}
