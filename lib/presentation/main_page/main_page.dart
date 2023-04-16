import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(child: Text('main')),
      );
}
