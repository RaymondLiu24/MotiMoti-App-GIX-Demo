import 'package:flutter/material.dart';
import 'package:motimoti_app/conversation.dart';
import 'package:motimoti_app/fill_in.dart';
import 'package:motimoti_app/lesson_quest.dart';
import 'package:motimoti_app/lesson_stat.dart';
import 'package:motimoti_app/lesson_streak.dart';
import 'package:motimoti_app/listen.dart';
import 'package:motimoti_app/login.dart';
import 'package:motimoti_app/nft_attribute.dart';
import 'package:motimoti_app/on_chain_wallet.dart';
import 'package:motimoti_app/practice.dart';
import 'package:motimoti_app/profile.dart';
import 'package:motimoti_app/quest.dart';
import 'package:motimoti_app/register.dart';
import 'package:motimoti_app/speak.dart';
import 'package:motimoti_app/story.dart';
import 'package:motimoti_app/storyline.dart';
import 'package:motimoti_app/flash_cards.dart';
import 'package:motimoti_app/nft_inventory.dart';
import 'package:motimoti_app/wallet.dart';
import 'package:motimoti_app/intro.dart';
import 'package:motimoti_app/webview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // var db = FirebaseFirestore.instance;

  runApp(
    MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'molingo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyLogin(),
        '/register': (context) => const MyRegister(),
        '/storyline': (context) => const MyStoryline(),
        // main pages
        '/story': (context) => const MyStory(),
        '/quest': (context) => const MyQuest(),
        '/practice': (context) => const MyPractice(),
        '/nft_inventory': (context) => const MyNftInventory(),
        '/intro': (context) => const MyIntro(),
        // play modules
        '/flash_cards': (context) => const MyFlashcards(),
        '/speak': (context) => const MySpeak(),
        '/listen': (context) => const MyListen(),
        '/conversation': (context) => const MyConversation(),
        '/fill_in': (context) => const MyFillIn(),
        // others
        '/wallet': (context) => const MyWallet(),
        '/on_chain_wallet': (context) => const MyOnChainWallet(),
        '/profile': (context) => const MyProfile(),
        '/nft_attribute': (context) => const MyNftAttribute(),
        '/webview': (context) => const WebViewExample(),
        '/lesson_stat': (context) => const LessonStat(),
        '/lesson_quest': (context) => const LessonQuest(),
        '/lesson_streak': (context) => const LessonStreak(),
      },
    ),
  );
}

// class MyService {
//   // final qCount_ = 0;
//   // final qCorrect_ = 0;
//   late int _myVariable;

//   //short getter for my variable
//   int get myVariable => _myVariable;

//   //short setter for my variable
//   set myVariable(int value) => _myVariable = value;
// }
