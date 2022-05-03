import 'package:flutter/material.dart';

import '../router/router_config.dart';
import 'auth/presentation/state/app_maneger_provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late RouterConfig routerConfig;
  late AppManagerProvider _provider;

  @override
  void initState() {
    _provider = AppManagerProvider();
    routerConfig = RouterConfig(provider: _provider);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: routerConfig.router.routerDelegate,
        routeInformationParser: routerConfig.router.routeInformationParser);
  }
}
