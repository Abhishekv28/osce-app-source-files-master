import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sceelie/screens/user_management/OSCEelieCandidate.dart';
import 'package:sceelie/screens/user_management/OSCEelieExaminer.dart';

import '../../color_class.dart';

class RolePlayScreen extends StatefulWidget {
  const RolePlayScreen({Key? key}) : super(key: key);

  @override
  _RolePlayScreenState createState() => _RolePlayScreenState();
}

class _RolePlayScreenState extends State<RolePlayScreen> {
  bool candidateBool = false;
  bool patientBool = false;
  bool examinerBool = false;
  bool observerBool = false;
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
              height: med.height * 0.08,
            ),

            //Center
            Center(
              child: Container(
                height: med.height * 0.55,
                width: med.width * 0.93,
                decoration: BoxDecoration(
                  color: cColor().blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: <Widget>[
                    //RolePlayScreen a room to start
                    Container(
                      height: med.height * 0.05,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Choose Your Role",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: cColor().darkBrown,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: med.height * 0.05,
                    ),

                    // TextField
                    InkWell(
                      onTap: () {
                        setState(() {
                          candidateBool = true;
                          patientBool = false;

                          examinerBool = false;
                          observerBool = false;
                        });
                      },
                      child: Container(
                          height: med.height * 0.06,
                          width: med.width * 0.8,
                          decoration: BoxDecoration(
                              color: candidateBool
                                  ? cColor().yellow
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            "Candidate",
                            style: TextStyle(
                                color: candidateBool
                                    ? Colors.white
                                    : cColor().yellow,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                    SizedBox(
                      height: med.height * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          patientBool = true;
                          candidateBool = false;
                          examinerBool = false;
                          observerBool = false;
                        });
                      },
                      child: Container(
                          height: med.height * 0.06,
                          width: med.width * 0.8,
                          decoration: BoxDecoration(
                              color:
                                  patientBool ? cColor().yellow : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            "Patient",
                            style: TextStyle(
                                color: patientBool
                                    ? Colors.white
                                    : cColor().yellow,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                    SizedBox(
                      height: med.height * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          examinerBool = true;
                          patientBool = false;
                          candidateBool = false;

                          observerBool = false;
                        });
                      },
                      child: Container(
                          height: med.height * 0.06,
                          width: med.width * 0.8,
                          decoration: BoxDecoration(
                              color:
                                  examinerBool ? cColor().yellow : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            "Examiner",
                            style: TextStyle(
                                color: examinerBool
                                    ? Colors.white
                                    : cColor().yellow,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                    SizedBox(
                      height: med.height * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          observerBool = true;
                          patientBool = false;
                          candidateBool = false;
                          examinerBool = false;
                        });
                      },
                      child: Container(
                          height: med.height * 0.06,
                          width: med.width * 0.8,
                          decoration: BoxDecoration(
                              color:
                                  observerBool ? cColor().yellow : Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            "Observer",
                            style: TextStyle(
                                color: observerBool
                                    ? Colors.white
                                    : cColor().yellow,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                  ],
                ),
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
                    onPressed: () {
                      if(candidateBool){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OSCEelieCandidateScreen()));

                      }
                      else if(examinerBool){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OSCEelieExaminerScreen()));
                      }
                      
                    },
                    child: Text(
                      "Ready!",
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
          ],
        ),
      ),
    );
  }
}
