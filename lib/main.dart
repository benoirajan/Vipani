/*
* Created by benoirajan@gmail.com
*
* */

import 'package:flutter/material.dart';
import 'package:untitled/away_message.dart';
import 'package:untitled/greeting_messages.dart';
import 'package:untitled/quick_replies.dart';
import 'package:untitled/shop_more_options.dart';

void main() {
  runApp(const VipaniApp());
}

class VipaniApp extends StatelessWidget {
  const VipaniApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Vipani',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color(0xffbb506d),

          // Define the default font family.
          fontFamily: 'Inter',

          // Define the default `TextTheme`. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Hind',
            ),
          ),
        ),



      /// Uncomment each code to get each Screens
      /// [GreetingMsg]
      //   home: const GreetingMsg(title: 'sd'),
      //   home: const AwayMsg(title: 'sd'),
      //   home: const ShopMoreOptions(title: 'sd'),
        home: const QuickReplies(title: 'sd')


    );
  }
}
