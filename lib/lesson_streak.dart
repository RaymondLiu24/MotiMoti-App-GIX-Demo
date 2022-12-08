import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:motimoti_app/flash_cards.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LessonStreak extends StatefulWidget {
  const LessonStreak({super.key});

  @override
  State<LessonStreak> createState() => _LessonStreakState();
}

class _LessonStreakState extends State<LessonStreak> {
  CollectionReference user = FirebaseFirestore.instance.collection('user');

  Future<void> updateCount(String field, int value) {
    return user.doc('Z3HKgZEBt1qEOco6qLSM').update({field: value})
        // .then((value) => print("Data Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    updateCount('streak', 1);

    return Scaffold(
      // backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   iconTheme: const IconThemeData(color: Colors.black),
      //   elevation: 0.0,
      // ),
      body: Container(
        height: 900,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/streak_quest_bg.png'),
            fit: BoxFit.fitWidth,
            // scale: 0.1,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 190,
            ),
            Center(
              child: const Text(
                "1",
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: const Text(
                "Days Streak",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.only(
                // top: 20,
                left: 10,
                right: 10,
              ),
              child: Text(
                "1     2     3     4     5     6     7",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 56,
                ),
                Image.asset('assets/streak_check.png'),
                const SizedBox(
                  width: 17,
                ),
                Image.asset(
                  'assets/streak_unchecked.png',
                  scale: 1.3,
                ),
                const SizedBox(
                  width: 16,
                ),
                Image.asset(
                  'assets/streak_reward_gray.png',
                  scale: 1.3,
                ),
                const SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/streak_unchecked.png',
                  scale: 1.3,
                ),
                const SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/streak_unchecked.png',
                  scale: 1.3,
                ),
                const SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/streak_unchecked.png',
                  scale: 1.3,
                ),
                const SizedBox(
                  width: 16,
                ),
                Image.asset(
                  'assets/streak_chest.png',
                  scale: 1.3,
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 60,
              endIndent: 55,
              color: Color.fromARGB(255, 196, 196, 196),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(
                // top: 20,
                left: 70,
                right: 50,
              ),
              child: Text(
                "2 more day to win 10 token streak reward!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
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
                Navigator.pushNamed(context, '/lesson_quest');
              },
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
