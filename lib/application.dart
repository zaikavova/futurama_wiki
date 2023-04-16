import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:futurama_wiki/routing/index.dart';

import 'injection_container.dart';

class FuturamaWikiApplication extends StatefulWidget {
  const FuturamaWikiApplication({super.key});

  @override
  State<FuturamaWikiApplication> createState() =>
      _FuturamaWikiApplicationState();
}

class _FuturamaWikiApplicationState extends State<FuturamaWikiApplication> {
  final RootStackRouter router = sl<RootStackRouter>();

  @override
  void initState() {
    super.initState();
    router.navigate(MainRoute());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: router.delegate(),
    );
  }
}
