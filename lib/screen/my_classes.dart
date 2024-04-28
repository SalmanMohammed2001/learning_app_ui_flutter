import 'package:flutter/material.dart';
import 'package:learning_app_ui/models/class_model.dart';

class MyClass extends StatefulWidget {
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  List<ClassModel> classes = [
    ClassModel(
      image:
          "https://ww2.kqed.org/app/uploads/sites/23/2022/11/BRO-Vector-iStock-1920x1280.jpg",
      name: "Math",
      studentCount: 200,
    ),
    ClassModel(
      image:
          "https://ww2.kqed.org/app/uploads/sites/23/2022/11/BRO-Vector-iStock-1920x1280.jpg",
      name: "Math",
      studentCount: 200,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Classes",
          style: TextStyle(
            color: Colors.purple,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.purple,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
