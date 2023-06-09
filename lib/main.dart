import 'package:bokdaeri_dev/features/webview_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bokdaeri Dev.',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        primaryColor: Colors.black,
        //useMaterial3: true,
      ),
      home: const WebviewController(),
    );
  }
}
