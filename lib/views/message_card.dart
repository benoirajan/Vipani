/// Created by benoirajan@gmail.com
/// this necessary for shop more options.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MsgCard extends StatelessWidget {
  const MsgCard({Key? key, required this.title, required this.text})
      : super(key: key);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        decoration: const BoxDecoration(
            color: Color(0xff212224),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          children: [
            Image(image: AssetImage('assets/images/ic_msg.png')),
            Padding(
                padding: EdgeInsets.only(left: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(text,
                      style: TextStyle(
                        color: Color(0xff999999)
                      ),
                    )
                  ],
                ),
            )

          ],
        ));
  }
}
