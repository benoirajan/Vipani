/// Created by benoirajan@gmail.com
/// file only works with [main.dart] with this project


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/views/message_card.dart';

class ShopMoreOptions extends StatefulWidget {
  const ShopMoreOptions({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ShopMoreOptions> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ShopMoreOptions> {
  @override
  Widget build(BuildContext context) {
    ThemeData th = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topLeft)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //const Padding(
            //padding: EdgeInsets.only(left: 16, top: 68),
            //  child:
            Container(
              padding: EdgeInsets.only(right: 16, left: 16, top: 68),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton.small(
                      backgroundColor: Color(0x32ffffff),
                      onPressed: null,
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                  Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/message.png'),
                            //fit: BoxFit.cover,
                          ),
                          color: Color.fromRGBO(18, 18, 18, 0.6),
                          shape: BoxShape.circle)),
                  Text("Skip")
                ],
              ),
            ),

            //),
            Center(
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  Text(
                    'Messaging',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: "inter"),
                  ),
                  SizedBox(height: 10),
                  Text('Help customers to learn about your business',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontFamily: "inter"))
                ],
              ),
            ),
            const SizedBox(height: 30),

            //next box after 1st half======================================================================
            Flexible(
              child: Container(
                padding:
                    const EdgeInsets.only(left: 16, top: 32,right: 16,bottom: 16),
                decoration: const BoxDecoration(
                    color: Color(0xff121212),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //childrens============================================================
                  children: [
                    const MsgCard(
                      title: "Greeting Message",
                      text: "Welcome new customers",
                    ),
                    const MsgCard(
                      title: "Away Message",
                      text: "Reply automaticaly when you are away",
                    ),
                    const MsgCard(
                      title: "Quick Replies",
                      text: "Reuse frequient messages",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Back'),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: th.primaryColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 48, vertical: 16),
                            ),
                            onPressed: () {},
                            child: const Text('Next',
                                style: TextStyle(fontSize: 16, color: Colors.white)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
