import 'dart:ffi';

import 'package:flutter/material.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/inappw_purple.png', scale: 1.23),
            InkWell(
              splashColor: Colors.black,
              onTap: () {
                Navigator.pushNamed(context, '/on_chain_wallet');
              },
              child: Ink.image(
                  image: const AssetImage('assets/onchainw_white.png'),
                  height: 110,
                  width: 110,
                  fit: BoxFit.fitWidth),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            //replace with our own icon data.
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffE9E9FC),
        elevation: 0.0,
      ),
      // body: Container(
      //   height: 300,
      //   decoration: const BoxDecoration(
      //     color: Color(0xffE9E9FC),
      //     borderRadius: BorderRadius.only(
      //         bottomLeft: Radius.circular(30),
      //         bottomRight: Radius.circular(30)),
      //   ),
      //   child: Container(
      //     decoration: const BoxDecoration(
      //       color: Color.fromARGB(255, 90, 90, 90),
      //       borderRadius: BorderRadius.only(
      //           bottomLeft: Radius.circular(30),
      //           bottomRight: Radius.circular(30)),
      //     ),
      //     width: 100,
      //     height: 200,
      //   ),
      // ),
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
            height: 280,
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 251,
              width: 348,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 15),
                    child: Text(
                      "Total Balance",
                      // semanticsLabel: "0/600xp",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 15),
                    child: Text(
                      "\$1.5",
                      // semanticsLabel: "0/600xp",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 15,
                    ),
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap:
                          () {}, //////////////////////////////////////popup window,used the old way///////////////
                      child: const Image(
                        image: AssetImage('assets/transfer.png'),
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                      "Transfer",
                      // semanticsLabel: "0/600xp",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border:
                    Border.all(color: const Color.fromARGB(255, 196, 196, 196)),
                borderRadius: BorderRadius.circular(10)),
            width: 348,
            height: 65,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset('assets/token.png'),
                const Text(
                  "  Token",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 120,
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "30",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "=\$15",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border:
                    Border.all(color: const Color.fromARGB(255, 196, 196, 196)),
                borderRadius: BorderRadius.circular(10)),
            width: 348,
            height: 65,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset('assets/AVAX.png'),
                const Text(
                  "  AVAX",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 120,
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "30",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "=\$15",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
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
