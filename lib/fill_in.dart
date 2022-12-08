import 'package:flutter/material.dart';

class MyFillIn extends StatefulWidget {
  const MyFillIn({super.key});

  @override
  State<MyFillIn> createState() => _MyFillInState();
}

class _MyFillInState extends State<MyFillIn> {
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
              height: 15,
            ),
            Row(
              children: [
                Image.asset('assets/logofrog.png', scale: 60),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 200,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(228, 230, 244, 100),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18),
                      topLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
                    ),
                  ),
                  child: const Text(
                    '请问有几位？',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                Image.asset('assets/speaker.png', scale: 2),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/speaker.png', scale: 2),
                Container(
                  width: 200,
                  height: 150,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(228, 230, 244, 100),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18),
                      topLeft: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                    ),
                  ),
                  child: const Text(
                    'We have three people？',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                Image.asset('assets/frog1.png', scale: 0.4),
                // const SizedBox(
                //   width: 15,
                // ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xffE9E9FC),
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('我'),
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
                      horizontal: 10,
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xffE9E9FC),
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('我们'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    // fixedSize: const Size.fromWidth(250),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xffE9E9FC),
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('有'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    // fixedSize: const Size.fromWidth(250),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xffE9E9FC),
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('没有'),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
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
              onPressed: () {},
              child: const Text('Check'),
            ),
          ],
        ),
      ),
    );
  }
}
