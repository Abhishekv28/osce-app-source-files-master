

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color_class.dart';
import 'create.dart';
import 'join.dart';

class WelcomeUser extends StatefulWidget {
  const WelcomeUser({Key? key}) : super(key: key);

  @override
  _WelcomeUserState createState() => _WelcomeUserState();
}

class _WelcomeUserState extends State<WelcomeUser> {
  @override
  Widget build(BuildContext context) {
    Size med = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cColor().black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        centerTitle: true,
        title: Text(
          "OSCEelie Peer Practice",
          style: GoogleFonts.rosario(
            textStyle: TextStyle(
              color: cColor().blue,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Back button
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 15, top: 10),
                height: med.height * 0.055,
                width: med.width * 0.2,
                decoration: BoxDecoration(
                  color: cColor().blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Container(
                    height: med.height * 0.035,
                    width: med.width * 0.1,
                    color: cColor().yellow,
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: cColor().blue,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.1,
            ),

            //Text WELCOME, NIKITIA
            Center(
              child: Container(
                child: Text(
                  "Welcome, Nikita!",
                  style: GoogleFonts.rosario(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.07,
            ),

            //Create, join, solo button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Create button
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Create()));
                  },
                  child: Container(
                    height: med.height * 0.05,
                    width: med.width * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        "Create",
                        style: GoogleFonts.rosario(
                          textStyle: TextStyle(
                            color: cColor().yellow,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //Join button
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Join()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    height: med.height * 0.05,
                    width: med.width * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        "Join",
                        style: GoogleFonts.rosario(
                          textStyle: TextStyle(
                            color: cColor().yellow,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //Solo button
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: med.height * 0.05,
                  width: med.width * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Solo",
                      style: GoogleFonts.rosario(
                        textStyle: TextStyle(
                          color: cColor().yellow,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: med.height * 0.03,
            ),

            //My Scores
            Center(
              child: Container(
                height: med.height * 0.05,
                width: med.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    "My Scores",
                    style: GoogleFonts.rosario(
                      textStyle: TextStyle(
                        color: cColor().yellow,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.18,
            ),

            //Ask a question
            Center(
              child: Container(
                height: med.height * 0.05,
                width: med.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    "Ask a Question",
                    style: GoogleFonts.rosario(
                      textStyle: TextStyle(
                        color: cColor().yellow,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.02,
            ),

            //My account
            Center(
              child: Container(
                height: med.height * 0.05,
                width: med.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    "My Account",
                    style: GoogleFonts.rosario(
                      textStyle: TextStyle(
                        color: cColor().yellow,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
