import 'package:bokdaeri_dev/features/webview_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  runApp(const MyApp());

  await SystemChrome.setPreferredOrientations(
    [
      // 어플리케이션 화면 세로 고정
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '복대리개발',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
        ),
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const WebviewController(),
    );
  }
}
