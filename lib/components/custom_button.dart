import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.size,
    required this.text,
    required this.voidCallback,
  });

  final Size size;
  final String text;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: voidCallback,
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
