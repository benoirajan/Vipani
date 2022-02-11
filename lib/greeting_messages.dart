/// Created by benoirajan@gmail.com
/// file only works with [main.dart] with this project


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/views/message_card.dart';

class GreetingMsg extends StatefulWidget {
  const GreetingMsg({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<GreetingMsg> createState() => state();
}

class state extends State<GreetingMsg> {
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
          Padding(padding: EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Send greeting message",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  Switch(
                    onChanged: null,
                    value: true,
                    activeColor: Colors.blue,
                    activeTrackColor: th.primaryColor,
                    inactiveThumbColor: Colors.white,
                  )
                ],
              )),

          TextFormField(
            //style: const TextStyle(color: Color(0xff5e5d5f)),
            maxLines: 6,
            decoration: const InputDecoration(
              //floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: TextStyle(
                color: Color(0xff939393),
              ),
              hintStyle: TextStyle(color: Color(0xff5e5d5f)),
              labelText: 'Message',
              hintText: 'Thank you for contacting',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                //borderSide: BorderSide.none,
              ),
              fillColor: Color(0xff242629),
              filled: true,
            ),
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            //maxLines: 5,
          ),
          const Spacer(flex: 1),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: th.primaryColor,
                padding: const EdgeInsets.symmetric(
                    horizontal: 48, vertical: 16),
              ),
              onPressed: () {},
              child: const Text('Save',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
          ),
        ],
      )
    );
  }
}
