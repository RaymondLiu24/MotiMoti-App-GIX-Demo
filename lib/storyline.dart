import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:motimoti_app/nft_inventory.dart';
// import 'package:motimoti_app/practice.dart';
import 'package:motimoti_app/quest.dart';
import 'package:motimoti_app/story.dart';
import 'package:floating_navbar/floating_navbar.dart';

class MyStoryline extends StatefulWidget {
  const MyStoryline({super.key});

  @override
  State<MyStoryline> createState() => _MyStorylineState();
}

class _MyStorylineState extends State<MyStoryline> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static final List<Widget> pageList = <Widget>[
    const MyStory(),
    const MyQuest(),
    // const MyPractice(),
    const MyNftInventory(),
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  var tokenValue = '30';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffE9E9FC),
      appBar: AppBar(
        leading: InkWell(
          splashColor: Colors.black,
          onTap: () {
            // Navigator.pushNamed(context, '/wallet');
          },
          child: Ink.image(
              image: const AssetImage('assets/user_white.png'),
              height: 1,
              width: 1,
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
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.only(top: 3, left: 44),
                        child: Text(
                          tokenValue,
                          // semanticsLabel: "0/600xp",
                          style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          tokenValue = '40';
                        });
                      },
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
      body: FloatingNavBar(
        resizeToAvoidBottomInset: false,
        color: const Color(0xffE9E9FC),
        selectedIconColor: Color.fromARGB(255, 27, 27, 27),
        unselectedIconColor: Color.fromARGB(255, 36, 36, 36).withOpacity(0.6),
        items: [
          FloatingNavBarItem(
            iconData: Icons.map_outlined,
            page: MyStory(),
            title: 'Story',
          ),
          FloatingNavBarItem(
            iconData: Icons.check_outlined,
            page: MyQuest(),
            title: 'Quest',
          ),
          // FloatingNavBarItem(iconData: Icons.alarm, page: Reminders(), title: 'Reminders'),
          FloatingNavBarItem(
              iconData: Icons.face_2_outlined,
              page: MyNftInventory(),
              title: 'NFT'),
        ],
        horizontalPadding: 10.0,
        hapticFeedback: true,
        showTitle: true,
      ),
      // body: Center(
      //   child: pageList.elementAt(_selectedIndex),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color.fromARGB(255, 247, 247, 247),
      //   // backgroundColor: Colors.transparent,
      //   iconSize: 0,
      //   selectedFontSize: 20,
      //   selectedItemColor: Colors.black,
      //   // unselectedItemColor: Colors.amber,
      //   selectedLabelStyle: const TextStyle(
      //     fontWeight: FontWeight.bold,
      //     color: Colors.black,
      //   ),
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.camera),
      //       label: 'Story',
      //       // backgroundColor: Color(0xffe9ffe7),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.camera),
      //       label: 'Quest',
      //       // backgroundColor: Color(0xffe9ffe7),
      //     ),
      //     // BottomNavigationBarItem(
      //     //   icon: Icon(Icons.camera),
      //     //   label: 'Practice',
      //     //   // backgroundColor: Color(0xffe9ffe7),
      //     // ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.camera),
      //       label: 'NFT',
      //       // backgroundColor: Color(0xffe9ffe7),
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
