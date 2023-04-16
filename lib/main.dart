import 'package:flutter/material.dart';
import 'package:futurama_wiki/application.dart';

import 'injection_container.dart' as ic;

void main() {
  ic.init();
  runApp(const FuturamaWikiApplication());
}
