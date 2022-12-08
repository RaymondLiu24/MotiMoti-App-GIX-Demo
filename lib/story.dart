// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:motimoti_app/flash_cards.dart';

class MyStory extends StatefulWidget {
  const MyStory({super.key});

  static final List<Widget> pageList = <Widget>[
    const MyFlashcards(),
  ];

  @override
  State<MyStory> createState() => _MyStoryState();
}

class _MyStoryState extends State<MyStory> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    // body:
    return SingleChildScrollView(
      reverse: true,
      child: Container(
        height: 3000,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Map_C2.png'),
            fit: BoxFit.fitWidth,
            // scale: 0.1,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200, right: 200),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 153, 199, 221),
                  fixedSize: const Size(120, 120),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Chapter8',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            // child: PopupMenuButton(
            //   initialValue: 2,
            //   shape: RoundedRectangleBorder(
            //       borderRadius:
            //           BorderRadius.all(const Radius.circular(15.0))),
            //   // child: const Center(child: Text('click here')),
            //   itemBuilder: (context) {
            //     return List.generate(5, (index) {
            //       return PopupMenuItem(
            //         value: index,
            //         child: Text('button no $index'),
            //       );
            //     });
            //   },
            //   icon: Icon(
            //     Icons.circle,
            //     // grade: ShapeDecoration(shape: Rect.fromCircle(center: 0, radius: 1)),
            //     color: Colors.black,
            //     Text: Text('click here'),
            //   ),
            // ),
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       // ignore: deprecated_member_use
            //       primary: const Color.fromARGB(255, 238, 162, 48),
            //       fixedSize: const Size(120, 120),
            //       shape: const CircleBorder(),
            //     ),
            //     child: const Text(
            //       'Chapter7',
            //       style: TextStyle(fontSize: 18),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 200, right: 90),
            //   child: InkWell(
            //     // splashColor: Colors.black,
            //     onTap: () {},
            //     child: Ink.image(
            //         image: const AssetImage('logofrog.png'),
            //         height: 200,
            //         width: 200,
            //         fit: BoxFit.cover),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.only(top: 200, right: 90),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 238, 162, 48),
                  fixedSize: const Size(120, 120),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Chapter7',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160, right: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 238, 162, 48),
                  fixedSize: const Size(120, 120),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Chapter6',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 290, left: 190),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 151, 192, 226),
                  fixedSize: const Size(120, 120),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Chapter5',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 290, right: 170),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 207, 188, 240),
                  fixedSize: const Size(120, 120),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Chapter4',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 190),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 207, 188, 240),
                  fixedSize: const Size(120, 120),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Chapter3',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 190),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 207, 188, 240),
                  fixedSize: const Size(120, 120),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Chapter2',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65, left: 240),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 56, 167, 29),
                  fixedSize: const Size(120, 120),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Chapter2',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65, right: 150),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 56, 167, 29),
                  fixedSize: const Size(120, 120),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Chapter1',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250, left: 150),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        elevation: 1,
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            const SizedBox(height: 20),
                            const Center(
                                child: Text('Intro',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            const SizedBox(height: 10),
                            _buildRow('Greet', '200/200xp'),
                            _buildRow('Pinyin', '0/200xp'),
                            _buildRow('Dining', '0/200xp'),
                            _buildRow('Basic', '0/200xp'),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20, bottom: 20),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/intro');
                                },
                                style: ElevatedButton.styleFrom(
                                  // ignore: deprecated_member_use
                                  primary:
                                      const Color.fromARGB(255, 243, 158, 31),
                                  // fixedSize: const Size(20, 120),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0.0, vertical: 20.0),
                                  shape: const StadiumBorder(),
                                  // shape: const CircleBorder(),
                                ),
                                child: const Text(
                                  'Enter',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            // _buildRow('Name 5', '5000'),
                            // _buildRow('Name 6', '6000'),
                          ],
                        ),
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 243, 158, 31),
                  fixedSize: const Size(120, 120),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Intro',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            // OutlinedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/flash_cards');
            //   },
            //   child: const Text('Flash cards'),
            // ),
            // OutlinedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/speak');
            //   },
            //   child: const Text('Repeat the word/sentence'),
            // ),
            // OutlinedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/listen');
            //   },
            //   child: const Text('Listening & choose'),
            // ),
            // OutlinedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/conversation');
            //   },
            //   child: const Text('Conversations with Mo'),
            // ),
            // OutlinedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/fill_in');
            //   },
            //   child: const Text('Fill in'),
            // ),
            // const SizedBox(
            //   height: 300,
            // ),
          ],
        ),
      ),
      // ),
    );

    // return GestureDetector(
    //   onTap: () {
    //     Navigator.pushNamed(context, '/flash_cards');
    //   },
    //   child: Image.asset(
    //     'assets/Chengdu.png',
    //     height: MediaQuery.of(context).size.height,
    //     width: MediaQuery.of(context).size.width,
    //     fit: BoxFit.cover,
    //   ),
    // );
  }

  Widget _buildRow(String name, String score) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 12),
          Container(height: 2, color: Colors.grey),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              // CircleAvatar(backgroundImage: AssetImage(imageAsset)),
              // SizedBox(width: 12),
              Text(name),
              const Spacer(),
              Container(
                // decoration: BoxDecoration(
                //     color: Colors.yellow[900],
                //     borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text(score),
              ),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
