import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ContactDetails> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    ThemeData th = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 68),
              child: FloatingActionButton.small(
                  backgroundColor: Color(0x32ffffff),
                  onPressed: null,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  )),
            ),
            Center(
              child: Column(
                children: [
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
                  const SizedBox(height: 10),
                  const Text(
                    'Contact Information',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  const Text('Help customers to learn about your business',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
                ],
              ),
            ),
            const SizedBox(height: 30),


            //next box after 1st half======================================================================
            Flexible(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                decoration: const BoxDecoration(
                    color: Color(0xff121212),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      //style: const TextStyle(color: Color(0xff5e5d5f)),
                      decoration: const InputDecoration(
                        //floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(
                          color: Color(0xff939393),
                        ),
                        hintStyle: TextStyle(color: Color(0xff5e5d5f)),
                        labelText: 'Email Id',
                        hintText: 'Email Id',
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
                    const SizedBox(height: 30),
                    Text('Add Email', style: TextStyle(color: th.primaryColor)),
                    const SizedBox(height: 30),
                    TextFormField(
                      //style: const TextStyle(color: Color(0xff5e5d5f)),
                      decoration: const InputDecoration(
                        //floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(
                          color: Color(0xff939393),
                        ),
                        hintStyle: TextStyle(color: Color(0xff5e5d5f)),
                        labelText: 'Phone Number',
                        hintText: 'Phone Number',
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
                    const SizedBox(height: 30),
                    Text(
                      'Add Phone Number',
                      style: TextStyle(color: th.primaryColor),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: th.primaryColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 48, vertical: 16),
                      ),
                      onPressed: () {},
                      child: const Text('Save',
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
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
