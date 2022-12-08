import 'dart:async';

import 'package:flutter/material.dart';
import 'package:motimoti_app/content/demo_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:video_player/video_player.dart';

class MyListen extends StatefulWidget {
  const MyListen({super.key});

  @override
  State<MyListen> createState() => _MyListenState();
}

class _MyListenState extends State<MyListen> {
  // set an int with value -1 since no card has been selected
  int selectedCard = -1;
  int qNum = 0;
  int heartNum = 5;

  int qCount_ = 0;
  int qCorrect_ = 0;
  int qCount = 0;
  int qCorrect = 0;

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

  // Future<void> setZero() async {
  //   user.doc('Z3HKgZEBt1qEOco6qLSM').update(
  //     {
  //       'qCount': 0,
  //       'qCorrect': 0,
  //     },
  //     // SetOptions(merge: true),
  //   );
  // }

  // Future<void> calculate(double acc) async {
  //   user.doc('Z3HKgZEBt1qEOco6qLSM').update(
  //     {
  //       'accuracy': acc,
  //     },
  //     // SetOptions(merge: true),
  //   );
  // }

  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    // controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
    controller = VideoPlayerController.asset(listenSets[qNum].link);
    controller.play();
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
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
              currentStep: 52 + qNum * 16,
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
            // Image.asset(
            //   'assets/video.png',
            //   // height: MediaQuery.of(context).size.height,
            //   // width: MediaQuery.of(context).size.width,
            //   fit: BoxFit.cover,
            // ),
            Container(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 125),
                child: AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                ),
              ),
              // Container(
              //   //duration of video
              //   child: Text(
              //       "Total Duration: " + controller.value.duration.toString()),
              // ),
              Container(
                  child: VideoProgressIndicator(controller,
                      allowScrubbing: true,
                      colors: VideoProgressColors(
                        backgroundColor: Colors.redAccent,
                        playedColor: Colors.green,
                        bufferedColor: Colors.purple,
                      ))),
              Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          if (controller.value.isPlaying) {
                            controller.pause();
                          } else {
                            controller.play();
                          }

                          setState(() {});
                        },
                        icon: Icon(controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow)),
                    // IconButton(
                    //     onPressed: () {
                    //       controller.seekTo(Duration(seconds: 0));

                    //       setState(() {});
                    //     },
                    //     icon: Icon(Icons.stop))
                  ],
                ),
              )
            ])),
            Expanded(
              child: ListView.builder(
                itemCount: listenSets[qNum].options.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectedCard = index;
                        },
                      );
                    },
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: selectedCard == index
                          ? const Color.fromARGB(255, 173, 176, 241)
                          : const Color(0xffE9E9FC),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          // horizontal: 15,
                        ),
                        child: Center(
                          child: Text(
                            listenSets[qNum].options[index],
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
                bool correct = (selectedCard == listenSets[qNum].A);
                String resultMsg = correct ? 'You are correct!' : 'Try Again!';
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
                                height: 100,
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
                                  // var accuracy = qCorrect / qCount;
                                  // calculate(accuracy);
                                  setState(
                                    () {
                                      if (correct &&
                                          qNum == flashcardSets.length - 1) {
                                        Navigator.pushNamed(
                                            context, '/lesson_stat');
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
                                          // setZero();
                                          // Navigator.pop(context);
                                        }
                                        return;
                                      }

                                      // question sequence
                                      if (qNum < flashcardSets.length - 1) {
                                        qNum = qNum + 1;
                                        loadVideoPlayer();
                                      }
                                    },
                                  );
                                },
                                child: const Text('Continue'),
                              )
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
