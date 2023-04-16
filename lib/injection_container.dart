import 'package:auto_route/auto_route.dart';
import 'package:futurama_wiki/routing/index.dart';
import 'package:get_it/get_it.dart';

GetIt get _instance => GetIt.instance;

bool _isInit = false;

T sl<T extends Object>({
  String? instanceName,
  Object? param1,
  Object? param2,
}) =>
    _instance.call<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );

void init() {
  if (!_isInit) {
    _isInit = true;
    _instance.registerLazySingleton<RootStackRouter>(() => AppRouter());
  }
}
