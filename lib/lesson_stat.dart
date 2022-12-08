import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'dart:math';

class LessonStat extends StatefulWidget {
  const LessonStat({super.key});

  @override
  State<LessonStat> createState() => _LessonStatState();
}

class _LessonStatState extends State<LessonStat> {
  CollectionReference user = FirebaseFirestore.instance.collection('user');
  Future<int> getUser(String field) {
    return user
        .doc('Z3HKgZEBt1qEOco6qLSM')
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('${field}: ${documentSnapshot.get(field)}');
        return documentSnapshot.get(field);
      } else {
        print('Document does not exist on the database');
        return -1;
      }
    });
  }

  Future<void> updateCount(String field, int value) {
    return user.doc('Z3HKgZEBt1qEOco6qLSM').update({field: value})
        // .then((value) => print("Data Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    // var accuracy = user
    //     .doc('Z3HKgZEBt1qEOco6qLSM')
    //     .get()
    //     .then((DocumentSnapshot documentSnapshot) {
    //   if (documentSnapshot.exists) {
    //     return documentSnapshot.get('accuracy');
    //   } else {
    //     print('Document does not exist on the database');
    //     return -1;
    //   }
    // });
    final _random = new Random();
    int next(int min, int max) => min + _random.nextInt(max - min);
    updateCount('accuracy', 85);

    // var accuracy = next(70, 90);
    var accuracy = 85;

    user.doc('Z3HKgZEBt1qEOco6qLSM').update(
      {
        'complete': true,
      },
    ).then((value) => print('quest completed'));

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   iconTheme: const IconThemeData(color: Colors.black),
      //   elevation: 0.0,
      // ),
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          const Center(
            child: Text(
              "Lesson Complete!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Image.asset('assets/mo_lessoncomplete.png'),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffE9E9FC),
                borderRadius: BorderRadius.circular(10)),
            width: 335,
            height: 140,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "XP Earned",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Image.asset('assets/xp.png'),
                    Text(
                      " 200 XP",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    const Text(
                      "Accuracy",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 114,
                    ),
                    Image.asset('assets/accuracy.png'),
                    Text(
                      '  $accuracy',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            style: TextButton.styleFrom(
              shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 100,
              ),
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              backgroundColor: Color.fromARGB(255, 51, 52, 56),
              textStyle: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/lesson_streak');
            },
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }
}
