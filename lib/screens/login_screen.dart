import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Image(
            image: AssetImage('assets/images/login_image.png'),
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 24.0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.gamepad),
            iconSize: 80.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
