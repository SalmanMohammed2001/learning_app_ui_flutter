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
          "https://media.wired.com/photos/5926df59f3e2356fd800ab80/master/w_2560%2Cc_limit/GettyImages-543338600-S2.jpg",
      name: "Music",
      studentCount: 150,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Friends"),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_people_outlined), label: "Account")
        ]),
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
        body: ListView.builder(
          itemCount: classes.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(classes[index].image)),
              title: Text(classes[index].name),
              subtitle: Text('Student Count -${classes[index].studentCount}'),
            );
          },
        ));
  }
}
