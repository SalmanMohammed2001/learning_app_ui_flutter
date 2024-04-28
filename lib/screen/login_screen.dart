import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_app_ui/components/custom_button.dart';

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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SocialButton(
                  size: size,
                  color: const Color.fromARGB(255, 24, 72, 206),
                  name: "Facebook",
                  iconData: FontAwesomeIcons.facebook,
                ),
                SocialButton(
                  size: size,
                  color: const Color.fromARGB(255, 180, 40, 30),
                  name: "Google",
                  iconData: FontAwesomeIcons.googlePlus,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  label: const Text("Email "),
                )),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      label: const Text("Password"),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                const Text(
                  "Rember Me",
                  style: TextStyle(color: Colors.purple),
                ),
                const Spacer(),
                const Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              size: size,
              text: "Login with your account",
              voidCallback: () {
                print("hii");
              },
            )
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
    required this.name,
    required this.color,
    required this.iconData,
  });

  final Size size;
  final Color color;
  final String name;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      height: 50,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
