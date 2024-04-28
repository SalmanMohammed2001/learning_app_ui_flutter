import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.purple, fontSize: 18),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.purple,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
