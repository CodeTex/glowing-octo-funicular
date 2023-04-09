import 'dart:async';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:richbrewz/src/app.dart';

void main() async {
  await runZonedGuarded(() async {
    usePathUrlStrategy();

    runApp(const RoutedApp());

    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
    };
    ErrorWidget.builder = (FlutterErrorDetails details) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('An error occurred'),
        ),
        body: Center(
          child: Text(details.toString()),
        ),
      );
    };
  }, (Object error, StackTrace stack) {
    // Log any errors to console
    debugPrint(error.toString());
  });
}
