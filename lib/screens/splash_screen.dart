import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, AppRoutes.home);
    });
    return _buildTopImage(context);
  }

  Widget _buildTopImage(BuildContext context) {
    return Material(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 5.0, color: Colors.orangeAccent),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 5.0,
                        blurRadius: 5.0)
                  ],
                  image: const DecorationImage(
                      image: AssetImage("assets/images/my_pic.jpg"),
                      fit: BoxFit.contain),
                ),
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                width: 250.0,
                height: 250),
            const Text(
              "The Flutter Way App",
              style: TextStyle(color: Colors.orange, fontSize: 26.0),
            )
          ]),
    );
  }
}
