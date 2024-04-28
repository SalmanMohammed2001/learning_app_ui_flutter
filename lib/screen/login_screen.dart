import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const Text(
              "Learning App",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Enter your login Details to access your account",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.purple, fontSize: 18, height: 0.9),
            ),
            const SizedBox(
              height: 25,
            ),
            SocialButton(size: size)
          ]),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: size.width * 0.4,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(15)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.facebook,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Facebook",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ],
    );
  }
}
