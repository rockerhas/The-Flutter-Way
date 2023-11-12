import 'package:flutter/material.dart';
import 'package:the_flutter_way/screens/counter_screen.dart';
import 'package:the_flutter_way/screens/grid_screen.dart';
import 'package:the_flutter_way/screens/home_screen.dart';
import 'package:the_flutter_way/screens/learn_stateless_widgets_screen.dart';
import 'package:the_flutter_way/screens/list_screen.dart';
import 'package:the_flutter_way/screens/login_screen.dart';
import 'package:the_flutter_way/screens/splash_screen.dart';
import 'package:the_flutter_way/screens/tip_calculator_screen.dart';
import 'package:the_flutter_way/utils/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return buildMaterialApp(context);
  }

  MaterialApp buildMaterialApp(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.login: (context) => const LoginScreen(),
        AppRoutes.counter: (context) => const CounterScreen(),
        AppRoutes.list: (context) => ListScreen(),
        AppRoutes.grid: (context) => GridScreen(),
        AppRoutes.tipCalculator: (context) => const TipCalculatorScreen(),
        AppRoutes.learnStatelessWidgets: (context) => const LearnStatelessWidgetScreen(),
      },
    );
  }
}
