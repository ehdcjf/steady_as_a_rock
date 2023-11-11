import 'package:steady_as_a_rock/data/arock_info.dart';
import 'package:steady_as_a_rock/screens/edit_screen.dart';
import 'package:steady_as_a_rock/screens/splash_screen.dart';
import 'package:steady_as_a_rock/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'steady as a rock',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/main': (context) => MainScreen(),
      },
      onGenerateRoute: (settrings) {
        if (settrings.name == '/edit') {
          // 수정 or 작성 화면
          final ArockInfo? arockInfo = settrings.arguments as ArockInfo?;
          return MaterialPageRoute(
            builder: (context) {
              return EditScreen();
            },
          );
        }
      },
    );
  }
}
