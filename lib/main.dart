import 'package:flutter/material.dart';
import 'package:movie/features/presntaion/view/splash_screen.dart';

import 'core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen : (context)=> SplashScreen()
      },
    );
  }
}


