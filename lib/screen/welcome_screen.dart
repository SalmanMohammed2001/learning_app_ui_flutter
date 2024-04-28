import 'package:flutter/material.dart';
import 'package:learning_app_ui/screen/login_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: NetworkImage(
                  "https://assets.materialup.com/uploads/897dce47-abf1-4013-b1cf-32352470830d/preview.jpg",
                ),
                fit: BoxFit.cover,
              ),
              const Text(
                "Online Learning Platform",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please note that in some cases ANSI escape sequences "
                "do not work under macOS. These escdape sequences are used"
                " to colorize the output",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w300,
                    fontSize: 14),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                },
                child: Container(
                  width: size.width * 0.8,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                      child: Text(
                    "Start Learning ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
