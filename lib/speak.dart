import 'package:flutter/material.dart';

class MySpeak extends StatefulWidget {
  const MySpeak({super.key});

  @override
  State<MySpeak> createState() => _MySpeakState();
}

class _MySpeakState extends State<MySpeak> {
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
            const Divider(
              height: 20,
              thickness: 7,
              indent: 15,
              endIndent: 15,
              color: Color.fromARGB(255, 168, 218, 161),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '  0',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '200',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Image.asset('assets/frog1.png'),
                const Text(
                  " ❤️❤️❤️❤️❤️",
                  style: TextStyle(
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
              height: 80,
            ),
            Column(
              children: const [
                Text(
                  'wo shi Ying Guo ren.',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  '我是英國人。',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'I am English.',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Image.asset('assets/speaker.png'),
                Image.asset('assets/microphone.png'),
              ],
            ),
            const SizedBox(
              height: 15,
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
                  horizontal: 50,
                ),
                foregroundColor: Colors.black,
                backgroundColor: Colors.transparent,
                textStyle: const TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
              child: const Text('Tap again to check'),
            ),
          ],
        ),
      ),
    );
  }
}
