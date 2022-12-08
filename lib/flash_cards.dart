import 'dart:async';

import 'package:flutter/material.dart';
import 'package:motimoti_app/content/demo_content.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:motimoti_app/main.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MyFlashcards extends StatefulWidget {
  const MyFlashcards({super.key});

  @override
  State<MyFlashcards> createState() => _MyFlashcardsState();
}

class _MyFlashcardsState extends State<MyFlashcards> {
  // set an int with value -1 since no card has been selected
  int selectedCard = -1;
  int qNum = 0;
  int heartNum = 5;

  int qCount_ = 0;
  int qCorrect_ = 0;
  int qCount = 0;
  int qCorrect = 0;

  // Future<int> operator +(Future<int> other) {
  //   return Future<int>([this, other] as FutureOr<int> Function());
  // }
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

  Future<void> setZero() async {
    user.doc('Z3HKgZEBt1qEOco6qLSM').update(
      {
        'qCount': 0,
        'qCorrect': 0,
      },
      // SetOptions(merge: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    // CollectionReference user = FirebaseFirestore.instance.collection('user');
    // final Stream<QuerySnapshot> user_read =
    //     FirebaseFirestore.instance.collection('users').snapshots();
    // var db = FirebaseFirestore.instance;

    //
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            StepProgressIndicator(
              totalSteps: 100,
              currentStep: 4 + qNum * 16,
              size: 10,
              fallbackLength: 50,
              padding: 0,
              selectedColor: Color.fromARGB(255, 71, 161, 59),
              unselectedColor: Color.fromARGB(255, 206, 206, 206),
              roundedEdges: Radius.circular(5),
            ),
            // const Divider(
            //   height: 20,
            //   thickness: 7,
            //   indent: 15,
            //   endIndent: 15,
            //   color: Color.fromARGB(255, 168, 218, 161),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: const [
            //     Text(
            //       '  0',
            //       style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     Text(
            //       '200',
            //       style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Image.asset('assets/frog1.png'),
                Text(
                  ' ${'❤️' * heartNum}',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 0,
              endIndent: 0,
              color: Color.fromARGB(255, 224, 216, 216),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/speaker.png'),
                Text(
                  flashcardSets[qNum].Q,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.vertical,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // childAspectRatio: MediaQuery.of(context).size.width /
                  //     (MediaQuery.of(context).size.height / 3),
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectedCard = index;
                        },
                      );
                      // debugPrint('selected index: $index');
                    },
                    child: Card(
                      // shape: BeveledRectangleBorder(
                      //   borderRadius: BorderRadius.circular(5),
                      // ),
                      color: selectedCard == index
                          ? const Color.fromARGB(255, 173, 176, 241)
                          : const Color(0xffE9E9FC),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 65,
                          horizontal: 15,
                        ),
                        child: Center(
                          child: Text(
                            flashcardSets[qNum].options[index],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 40,
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
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 59, 59, 59),
                textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                bool correct = (selectedCard == flashcardSets[qNum].A);
                String resultMsg = correct ? 'You are correct!' : 'Try again!';
                // String rewardMsg = correct ? '+10(\$)' : '';
                String rewardMsg = '';
                Color resultColor = correct
                    ? const Color.fromARGB(255, 82, 167, 77)
                    : Colors.red;

                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height:
                          MediaQuery.of(context).copyWith().size.height * 0.33,
                      child: Scaffold(
                        backgroundColor: const Color.fromARGB(255, 47, 48, 60),
                        body: Center(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                resultMsg,
                                style: TextStyle(
                                  color: resultColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Text(
                                rewardMsg,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
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
                                  foregroundColor: Colors.black,
                                  backgroundColor:
                                      const Color.fromARGB(255, 223, 226, 242),
                                  textStyle: const TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                  // counting accuracy
                                  // var qCorrect = await getUser('qCorrect');
                                  // var qCount = await getUser('qCount');

                                  setState(
                                    () {
                                      if (correct &&
                                          qNum == flashcardSets.length - 1) {
                                        Navigator.pushNamed(context, '/listen');
                                      }
                                      if (correct) {
                                        updateCount('qCorrect', qCorrect + 1);
                                        updateCount('qCount', qCount + 1);
                                        qCorrect = qCorrect + 1;
                                        qCount = qCount + 1;
                                        //
                                        qCorrect_ = qCorrect_ + 1;
                                        qCount_ = qCount_ + 1;
                                      } else {
                                        updateCount('qCount', qCount + 1);
                                        qCount = qCount + 1;
                                        //
                                        qCount_ = qCount_ + 1;
                                        if (heartNum > 0) {
                                          heartNum = heartNum - 1;
                                        } else {
                                          heartNum = 5;
                                          setZero();
                                          Navigator.pop(context);
                                        }
                                        return;
                                      }

                                      // question sequence
                                      if (qNum < flashcardSets.length - 1) {
                                        qNum = qNum + 1;
                                      }
                                    },
                                  );
                                },
                                child: const Text('Continue'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Check'),
            ),
          ],
        ),
      ),
    );
  }
}
