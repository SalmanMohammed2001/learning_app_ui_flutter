import 'package:flutter/material.dart';
import 'package:learning_app_ui/screen/login_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.size,
    required this.text,
  });

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ));
      },
      child: Container(
        width: size.width * 0.8,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.purple, borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
