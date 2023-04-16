import 'package:auto_route/auto_route.dart';
import 'package:futurama_wiki/presentation/main_page/main_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  generateForDir: ['lib/presentation'],
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
        ),
      ];
}
