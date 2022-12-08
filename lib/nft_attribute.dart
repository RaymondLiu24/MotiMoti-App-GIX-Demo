import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
// import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:motimoti_app/flash_cards.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MyNftAttribute extends StatefulWidget {
  const MyNftAttribute({super.key});

  @override
  State<MyNftAttribute> createState() => _MyNftAttributeState();
}

class _MyNftAttributeState extends State<MyNftAttribute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffE9E9FC),
      appBar: AppBar(
        leading: InkWell(
          splashColor: Colors.black,
          onTap: () {
            Navigator.pop(context);
          },
          child: Ink.image(
              image: const AssetImage('assets/return_white.png'),
              height: 7,
              width: 5,
              fit: BoxFit.scaleDown),
        ),
        actions: <Widget>[
          InkWell(
            splashColor: Colors.black,
            onTap: () {
              Navigator.pushNamed(context, '/wallet');
            },
            child: Container(
                height: 30,
                width: 180,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/wallet_white.png'),
                    fit: BoxFit.fitWidth,
                    // scale: 0.1,
                  ),
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 3, left: 44),
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
                      padding: EdgeInsets.only(top: 3, left: 32),
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
            width: 15,
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffE9E9FC),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        // reverse: true,
        child: Container(
          height: 900,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xffE9E9FC),
          ),
          child: Container(
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(30.0),
            ),
            // height: 251,
            // width: 300,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Mo",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/mofren_goodnight.png',
                  scale: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Image.asset(
                    'assets/level.png',
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Level 1",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: StepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 32,
                      size: 20,
                      fallbackLength: 180,
                      padding: 0,
                      selectedColor: Color.fromARGB(255, 120, 120, 219),
                      unselectedColor: Color(0xffE9E9FC),
                      roundedEdges: Radius.circular(5),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffE9E9FC),
                      borderRadius: BorderRadius.circular(10)),
                  width: 295,
                  height: 190,
                  child: Column(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Attributes",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 63, 63, 63),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: const BeveledRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(2),
                              ),
                            ),
                            // padding: const EdgeInsets.,
                            minimumSize: const Size(8, 8),
                            foregroundColor: Colors.black,
                            backgroundColor:
                                const Color.fromARGB(255, 190, 190, 190),
                            textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Base'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: const BeveledRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(2),
                              ),
                            ),
                            minimumSize: const Size(8, 8),
                            foregroundColor: Colors.black,
                            backgroundColor:
                                const Color.fromARGB(255, 120, 120, 219),
                            textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Points+'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/earningspeed.png',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Earning Speed",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: StepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 32,
                          size: 10,
                          fallbackLength: 115,
                          padding: 0,
                          selectedColor: Color.fromARGB(255, 120, 120, 219),
                          unselectedColor: Color.fromARGB(255, 255, 255, 255),
                          roundedEdges: Radius.circular(5),
                        ),
                      ),
                      const Text(
                        "11",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/luck.png',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Luck",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 67, right: 10),
                        child: StepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 32,
                          size: 10,
                          fallbackLength: 115,
                          padding: 0,
                          selectedColor: Color.fromARGB(255, 120, 120, 219),
                          unselectedColor: Color.fromARGB(255, 255, 255, 255),
                          roundedEdges: Radius.circular(5),
                        ),
                      ),
                      const Text(
                        "11",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(children: [
                      const SizedBox(
                        width: 23,
                      ),
                      Image.asset(
                        'assets/lives.png',
                      ),
                      const SizedBox(
                        width: 13.5,
                      ),
                      const Text(
                        "Lives",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 67,
                      ),
                      const Text(
                        "❤️",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        "x5",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffE9E9FC),
                      borderRadius: BorderRadius.circular(10)),
                  width: 295,
                  height: 300,
                  child: Column(
                    //////GAICHENG ROW////
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Abilities",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 63, 63, 63),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Change gear to equip ability",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 119, 119, 119),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // ),
      ),
    );
  }
}
