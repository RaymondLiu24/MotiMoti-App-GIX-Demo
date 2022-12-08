import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

bool completion = false;

class MyQuest extends StatefulWidget {
  const MyQuest({super.key});

  @override
  State<MyQuest> createState() => _MyQuestState();
}

class _MyQuestState extends State<MyQuest> {
  CollectionReference user = FirebaseFirestore.instance.collection('user');
  var title = 'Complete one lesson about greeting!';
  var stepProgress = 0;
  var qProgress = '0/1';
  var text1 = 'Go to \'Story\' Mode to complete this quest!';

  @override
  Widget build(BuildContext context) {
    user.doc('Z3HKgZEBt1qEOco6qLSM').get().then(
      (DocumentSnapshot documentSnapshot) {
        if (documentSnapshot.exists) {
          completion = documentSnapshot.get('complete');
          print('from database: $completion');
          // return completion;
        } else {
          print('Document does not exist on the database');
          return -1;
        }
      },
    );

    print('result: $completion');
    if (completion) {
      title = 'Greeting lesson completed!';
      stepProgress = 100;
      qProgress = '1/1';
      text1 = 'The next quest is coming tomorrow!';
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              // margin: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                color: Color(0xffE9E9FC),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              width: 500,
              height: 140,
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 40,
                      ),
                      Image.asset('assets/daily_quest.png', scale: 1.1),
                      InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          // Navigator.pushNamed(context, '/conversation');
                        },
                        child: const Image(
                          image: AssetImage('assets/streak.png'),
                          height: 48,
                          width: 156,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Today's quest is here!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
            // margin: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Color(0xffE9E9FC),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            width: 298,
            height: 365,
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Container(
                //   // margin: const EdgeInsets.all(30),
                //   decoration: BoxDecoration(
                //     color: Color.fromARGB(255, 203, 203, 228),
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(10),
                //     ),
                //   ),
                //   width: 80,
                //   height: 24,
                //   alignment: Alignment.bottomCenter,
                //   child: const Text(
                //     "10:31:40",
                //     style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.normal,
                //       color: Colors.black,
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: StepProgressIndicator(
                    totalSteps: 100,
                    currentStep: stepProgress,
                    size: 10,
                    fallbackLength: 80,
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
                  qProgress,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset('assets/questreward.png', scale: 1.1),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: Text(
              text1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
    // Container(
    //   padding: const EdgeInsets.all(20),
    //   child: Column(
    //     children: [
    //       const SizedBox(
    //         height: 25,
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           TextButton(
    //             style: TextButton.styleFrom(
    //               shape: const BeveledRectangleBorder(
    //                 borderRadius: BorderRadius.all(
    //                   Radius.circular(6),
    //                 ),
    //               ),
    //               padding: const EdgeInsets.symmetric(
    //                 vertical: 15,
    //                 horizontal: 15,
    //               ),
    //               foregroundColor: Colors.black,
    //               backgroundColor: const Color(0xffE9E9FC),
    //               textStyle: const TextStyle(
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             onPressed: () {},
    //             child: const Text('   Daily Quest   '),
    //           ),
    //           TextButton(
    //             style: TextButton.styleFrom(
    //               shape: const BeveledRectangleBorder(
    //                 borderRadius: BorderRadius.all(
    //                   Radius.circular(6),
    //                 ),
    //               ),
    //               padding: const EdgeInsets.symmetric(
    //                 vertical: 15,
    //                 horizontal: 15,
    //               ),
    //               foregroundColor: Colors.black,
    //               backgroundColor: const Color.fromARGB(255, 224, 216, 216),
    //               textStyle: const TextStyle(
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             onPressed: () {},
    //             child: const Text('       Streak       '),
    //           ),
    //         ],
    //       ),
    //       TextButton(
    //         style: TextButton.styleFrom(
    //           shape: const BeveledRectangleBorder(
    //             borderRadius: BorderRadius.all(
    //               Radius.circular(6),
    //             ),
    //           ),
    //           padding: const EdgeInsets.symmetric(
    //             vertical: 100,
    //             horizontal: 80,
    //           ),
    //           foregroundColor: Colors.black,
    //           backgroundColor: const Color(0xffE9E9FC),
    //           textStyle: const TextStyle(
    //             fontSize: 26,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //         onPressed: () {},
    //         child: const Text('Daily Quest'),
    //       ),
    //       const SizedBox(
    //         height: 40,
    //       ),
    //       TextButton(
    //         style: TextButton.styleFrom(
    //           shape: const BeveledRectangleBorder(
    //             borderRadius: BorderRadius.all(
    //               Radius.circular(6),
    //             ),
    //           ),
    //           padding: const EdgeInsets.symmetric(
    //             vertical: 20,
    //             horizontal: 50,
    //           ),
    //           foregroundColor: Colors.white,
    //           backgroundColor: const Color.fromARGB(255, 224, 216, 216),
    //           textStyle: const TextStyle(
    //             fontSize: 26,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //         onPressed: () {},
    //         child: const Text('Claim Reward'),
    //       ),
    //     ],
  }
}
