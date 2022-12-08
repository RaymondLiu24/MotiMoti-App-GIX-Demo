import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyIntro extends StatefulWidget {
  const MyIntro({super.key});

  @override
  State<MyIntro> createState() => _MyIntroState();
}

class _MyIntroState extends State<MyIntro> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          splashColor: Colors.black,
          onTap: () {
            Navigator.pop(context);
          },
          child: Ink.image(
              image: const AssetImage('assets/return_purple.png'),
              height: 15,
              width: 5,
              fit: BoxFit.contain),
        ),
        actions: <Widget>[
          InkWell(
            splashColor: Colors.black,
            onTap: () {
              Navigator.pushNamed(context, '/wallet');
            },
            child: Container(
                height: 30,
                width: 210,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/wallet_purple.png'),
                    fit: BoxFit.fitWidth,
                    // scale: 0.1,
                  ),
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 57),
                      child: Text(
                        "30",
                        // semanticsLabel: "0/600xp",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 32),
                      child: Text(
                        "  2.5",
                        // semanticsLabel: "0/600xp",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/introbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 15),
              child: Text(
                "Introduction",
                // semanticsLabel: "0/600xp",
                style: TextStyle(
                  color: Color.fromARGB(255, 243, 158, 31),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5, left: 15),
              child: Text(
                "0/600xp",
                // semanticsLabel: "0/600xp",
                style: TextStyle(
                  color: Color.fromARGB(255, 243, 158, 31),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
              ),
              child: InkWell(
                splashColor: Colors.black,
                onTap: () {},
                child: const Image(
                  image: AssetImage('assets/intro_challenge.png'),
                  height: 135,
                  width: 135,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/flash_cards');
                },
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 243, 158, 31),
                  fixedSize: const Size(100, 100),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Greet',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: const Color.fromARGB(255, 243, 158, 31),
                        fixedSize: const Size(100, 100),
                        shape: const CircleBorder(),
                      ),
                      child: const Text(
                        'Basic',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: const Color.fromARGB(255, 243, 158, 31),
                        fixedSize: const Size(100, 100),
                        shape: const CircleBorder(),
                      ),
                      child: const Text(
                        'Dinning',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 15),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 243, 158, 31),
                  fixedSize: const Size(100, 100),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Pinyin',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
