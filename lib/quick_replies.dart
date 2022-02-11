/// Created by benoirajan@gmail.com
/// file only works with [main.dart] with this project


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/views/message_card.dart';

class QuickReplies extends StatefulWidget {
  const QuickReplies({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<QuickReplies> createState() => state();
}

class state extends State<QuickReplies> {
  @override
  Widget build(BuildContext context) {
    ThemeData th = Theme.of(context);
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [

            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.all(18),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios,
                      size: 18,),
                    SizedBox(width: 19),
                    Text("Greeting Message",
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400))
                  ],
                )),
            //=========================================
            Padding(padding: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("*thanks",
                        style:
                        TextStyle(color: Color(0xff99E1D9))),
                    Text("Thank you for your business! We look forward to working with you again.")
                  ],
                )),


            const Spacer(flex: 1),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {  },
                child: Icon(Icons.add),
              )
            ),
          ],
        )
    );
  }
}
