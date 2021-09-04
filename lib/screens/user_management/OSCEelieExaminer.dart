import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sceelie/screens/user_management/OSCEelieCandidate.dart';
import 'package:sceelie/screens/user_management/OSCEelieExaminer.dart';

import '../../color_class.dart';

class OSCEelieExaminerScreen extends StatefulWidget {
  const OSCEelieExaminerScreen({Key? key}) : super(key: key);

  @override
  _OSCEelieExaminerScreenState createState() => _OSCEelieExaminerScreenState();
}

class _OSCEelieExaminerScreenState extends State<OSCEelieExaminerScreen> {
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
          "OSCEelie Examiner",
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
            InkWell(
              onTap: () => Navigator.pop(context),
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
              height: med.height * 0.05,
            ),
            Center(
                child: Text(
              "Case",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: med.height * 0.03,
            ),
            Center(
              child: Container(
                  height: med.height * 0.06,
                  width: med.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Back Pain",
                    style: TextStyle(
                        color: cColor().black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ))),
            ),
            SizedBox(
              height: med.height * 0.01,
            ),
            Center(
              child: Container(
                width: med.width * 0.9,
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(
                        "Reading Time:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "2 min",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_circle,
                              color: Colors.white,
                            ))),
                    Expanded(
                        flex: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            ))),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.005,
            ),
            Center(
              child: Container(
                width: med.width * 0.9,
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(
                        "Station Time:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "3 min",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_circle,
                              color: Colors.white,
                            ))),
                    Expanded(
                        flex: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            ))),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.005,
            ),
            Center(
              child: Container(
                width: med.width * 0.9,
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(
                        "Question Time:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "4 min",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_circle,
                              color: Colors.white,
                            ))),
                    Expanded(
                        flex: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            ))),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.005,
            ),
            Center(
              child: Container(
                width: med.width * 0.9,
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(
                        "Feedback Time:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "5 min",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_circle,
                              color: Colors.white,
                            ))),
                    Expanded(
                        flex: 2,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            ))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: med.height * 0.09,
            ),
            Center(
              child: Row(
                children: [
                  SizedBox(
              width: med.width * 0.13,
            ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "Candidate:",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "John Doe",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: med.height * 0.03,
            ),

            Center(
              child: Row(
                children: [
                  SizedBox(
                    width: med.width * 0.13,
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "Patient:",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "Jane Doe",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: med.height * 0.03,
            ),
            Center(
              child: Row(
                children: [
                  SizedBox(
                    width: med.width * 0.13,
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "Examiner:",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "Nikita Doe",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: med.height * 0.03,
            ),
            Center(
              child: Row(
                children: [
                  SizedBox(
                    width: med.width * 0.13,
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "Observer:",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      "Dash Doe",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: med.height * 0.05,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: med.height * 0.05,
                  width: med.width * 0.27,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Go!",
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: cColor().pink,
                    textColor: Colors.white,
                    hoverColor: cColor().yellow,
                    highlightColor: cColor().yellow,
                    splashColor: cColor().yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: med.height * 0.04,
            ),

            //Center
          ],
        ),
      ),
    );
  }
}
