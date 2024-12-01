import 'package:get/get.dart';
import 'package:shojibkhan_testproject/app/modules/dashboard/views/codelab_view.dart';
import 'package:shojibkhan_testproject/app/modules/dashboard/views/counter_view.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/flashscreen_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/dashboard/views/single_story_view.dart';
import '../modules/dashboard/views/story_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.FLASHSCREEN,
      page: () => const FlashScreenView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.STORY,
      page: () => StoryView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.CODE,
      page: () => CodelabView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SINGLESTORY,
      page: () => const SingleStoryView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(
        title: '',
      ),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER,
      page: () => const CounterView(),
      binding: DashboardBinding(),
    ),
  ];
}
