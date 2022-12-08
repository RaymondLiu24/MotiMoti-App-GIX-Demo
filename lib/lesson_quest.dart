import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class LessonQuest extends StatefulWidget {
  const LessonQuest({super.key});

  @override
  State<LessonQuest> createState() => _LessonQuestState();
}

class _LessonQuestState extends State<LessonQuest> {
  @override
  Widget build(BuildContext context) {
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
              height: 220,
            ),
            Center(
              child: const Text(
                "Daily Quest",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: const Text(
                "Complete!",
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
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffE9E9FC),
                  borderRadius: BorderRadius.circular(10)),
              width: 276,
              height: 147,
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      // top: 20,
                      left: 30,
                      right: 30,
                    ),
                    child: Text(
                      "Complete one lesson about food!",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    child: StepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 100,
                      size: 20,
                      fallbackLength: 100,
                      padding: 0,
                      selectedColor: Color.fromARGB(255, 120, 120, 219),
                      unselectedColor: Color.fromARGB(255, 206, 206, 206),
                      roundedEdges: Radius.circular(5),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "1/1",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "You won 10 tokens!",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                ),
                Image.asset('assets/coin.png'),
                Text(
                  "10",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 65,
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
                  horizontal: 55,
                ),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
                backgroundColor: Color.fromARGB(255, 51, 52, 56),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/storyline');
              },
              child: const Text('Claim Reward & Finish'),
            ),
          ],
        ),
      ),
      // Column(
      //   children: [

      //     const SizedBox(
      //       height: 200,
      //     ),
      //     Center(
      //       child: const Text(
      //         "Lesson Complete!",
      //         style: TextStyle(
      //           fontSize: 30,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.black,
      //         ),
      //       ),
      //     ),
      //     // Image.asset('assets/mo_lessoncomplete.png'),
      //     const SizedBox(
      //       height: 50,
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //           color: const Color(0xffE9E9FC),
      //           borderRadius: BorderRadius.circular(10)),
      //       width: 335,
      //       height: 140,
      //       child: Column(
      //         children: [
      //           const SizedBox(
      //             height: 30,
      //           ),
      //           Row(
      //             children: [
      //               const SizedBox(
      //                 width: 25,
      //               ),
      //               Text(
      //                 "XP Earned",
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black,
      //                 ),
      //               ),
      //               const SizedBox(
      //                 width: 100,
      //               ),
      //               Image.asset('assets/xp.png'),
      //               Text(
      //                 " 200 XP",
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                   fontWeight: FontWeight.normal,
      //                   color: Colors.black,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(
      //             height: 30,
      //           ),
      //           Row(
      //             children: [
      //               const SizedBox(
      //                 width: 25,
      //               ),
      //               Text(
      //                 "Accuracy",
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black,
      //                 ),
      //               ),
      //               const SizedBox(
      //                 width: 114,
      //               ),
      //               Image.asset('assets/accuracy.png'),
      //               Text(
      //                 "  100 %",
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                   fontWeight: FontWeight.normal,
      //                   color: Colors.black,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 100,
      //     ),
      //     TextButton(
      //       style: TextButton.styleFrom(
      //         shape: const BeveledRectangleBorder(
      //           borderRadius: BorderRadius.all(
      //             Radius.circular(6),
      //           ),
      //         ),
      //         padding: const EdgeInsets.symmetric(
      //           vertical: 20,
      //           horizontal: 100,
      //         ),
      //         foregroundColor: Color.fromARGB(255, 255, 255, 255),
      //         backgroundColor: Color.fromARGB(255, 51, 52, 56),
      //         textStyle: const TextStyle(
      //           fontSize: 26,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       onPressed: () {},
      //       child: const Text('Continue'),
      //     ),
      //   ],
      // ),
    );
  }
}
