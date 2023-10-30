import 'package:flutter/material.dart';
import 'package:the_flutter_way/screens/counter_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return buildMaterialApp(context);
  }

  MaterialApp buildMaterialApp(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        darkTheme: ThemeData(primarySwatch: Colors.orange),
        themeMode: ThemeMode.system,
        home: Scaffold(
            appBar: AppBar(title: const Text("Counter App")),
            body: const CounterScreen()));
  }
}
