import 'package:chat_app_ai/models/person.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  final logic = Get.put(HomeLogic());
 ///I have created my own branch
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            Person malik = Person(name: 'Malik Adrees Nazir', age: 17, email: 'malik.adrees@example.com');
            Person person2 = Person(name: 'Jane Smith', age: 25, email: 'jane.smith@example.com');
            Person person3 = Person(name: 'Alice Johnson', age: 28, email: 'alice.johnson@example.com');
            Person person4 = Person(name: 'Bob Brown', age: 35, email: 'bob.brown@example.com');
            Person person5 = Person(name: 'Charlie Davis', age: 22, email: 'charlie.davis@example.com');
            List<Person> personList = [malik, person2, person3, person4, person5];

            final collection = FirebaseFirestore.instance.collection("Chat ai");

            for (int i = 0; i < personList.length; i++) {
              await collection.doc(personList[i].name).set(personList[i].toJson());
              print('Saved to Firestore: Name: ${personList[i].name}, Age: ${personList[i].age}, Email: ${personList[i].email}');
            }
          },
          child: Text("Save to Firestore"),
        ),
        Container(),
      ],
    );
  }
}