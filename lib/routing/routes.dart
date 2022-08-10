import 'package:get/route_manager.dart';
import 'package:ui_testing_application/pages/home_page.dart';
import 'package:ui_testing_application/pages/widgets/bottomNav.dart';
import 'package:ui_testing_application/pages/widgets/settings.dart';

class RouteClass {
  static const String home = '/';
  static const String investment = '/investment';
  static const String settings = '/settings';
  static const String bottomNav = '/bottomNav';

  static String getHomeRoute() => home;
  static String getInvestmentRoute() => investment;
  static String getSettingRoute() => settings;
  static String getNavBarRoute() => bottomNav;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(
        name: investment,
        page: () => BottomNav(
              selectedIndex: 1,
            )),
    GetPage(name: settings, page: () => const SettingScreen()),
    GetPage(name: bottomNav, page: () => BottomNav()),
  ];
}
