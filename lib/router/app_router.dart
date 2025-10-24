import 'package:auto_route/auto_route.dart';
import 'package:ozet_haber/pages/home_page.dart';
import 'package:ozet_haber/pages/turkiye_news.dart';
import 'package:ozet_haber/pages/world_news.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: '/', initial: true),
    AutoRoute(page: TurkiyeNewsRoute.page),
    AutoRoute(page: WorldNewsRoute.page)
  ];
}