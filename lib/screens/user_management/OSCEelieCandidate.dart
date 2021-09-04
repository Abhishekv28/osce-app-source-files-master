import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color_class.dart';

class OSCEelieCandidateScreen extends StatefulWidget {
  const OSCEelieCandidateScreen({Key? key}) : super(key: key);

  @override
  _OSCEelieCandidateScreenState createState() => _OSCEelieCandidateScreenState();
}

class _OSCEelieCandidateScreenState extends State<OSCEelieCandidateScreen> {
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
          "OSCEelie Candidate",
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
        // primary: false,
        // physics: NeverScrollableScrollPhysics(),
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
              height: med.height * 0.04,
            ),
            Center(
                child: Text(
              "Suggested Cases",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: med.height * 0.03,
            ),
            Center(
              child: Container(
                  height: med.height * 0.06,
                  width: med.width * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Jaundice",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ))),
            ),
            SizedBox(
              height: med.height * 0.01,
            ),
            Center(
              child: Container(
                  height: med.height * 0.06,
                  width: med.width * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Clavicular fx",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ))),
            ),
            SizedBox(
              height: med.height * 0.05,
            ),

            Center(
                child: Text(
              "Tap to Suggest",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: med.height * 0.01,
            ),
            Center(
              child: Container(
                height: med.height * 0.435,
                width: med.width * 0.93,
                decoration: BoxDecoration(
                  color: cColor().blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: <Widget>[
                    //RolePlayScreen a room to start
                    // Container(
                    //   height: med.height * 0.05,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   child: Center(
                    //     child: Text(
                    //       "Choose Your Role",
                    //       style: GoogleFonts.roboto(
                    //         textStyle: TextStyle(
                    //             color: cColor().darkBrown,
                    //             fontSize: 19,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Container(
                      height: 46,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 60,
                            ),
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  //No Text
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text("No",
                                        style: GoogleFonts.roboto(
                                            textStyle: TextStyle(
                                          color: cColor().black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ))),
                                  ),
                                ],
                              ),
                            ),
                            // Expanded(
                            //   flex: 1,
                            //   child: Container()),
                            Expanded(
                                flex: 7,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Text(
                                        'Title',
                                        style: TextStyle(
                                            color: cColor().black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_up_outlined,
                                      color: cColor().black,
                                      size: 30,
                                    ),
                                  ],
                                )),
                          ]),
                    ),

                    SizedBox(
                      height: med.height * 0.05,
                    ),

                    // TextField
                    InkWell(
                      onTap: () {
                        setState(() {
                          candidateBool = !candidateBool;
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
                            "Neoplasm",
                            style: TextStyle(
                                color: candidateBool
                                    ? Colors.white
                                    : cColor().black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                    SizedBox(
                      height: med.height * 0.02,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          patientBool = !patientBool;
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
                            "Lung Cancer",
                            style: TextStyle(
                                color:
                                    patientBool ? Colors.white : cColor().black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                    SizedBox(
                      height: med.height * 0.02,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          examinerBool = !examinerBool;
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
                            "Measles",
                            style: TextStyle(
                                color: examinerBool
                                    ? Colors.white
                                    : cColor().black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                    SizedBox(
                      height: med.height * 0.03,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          //Search icon
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: cColor().yellow,
                                size: 30,
                              ),
                            ),
                          ),

                          //Seacrh bar
                          Container(
                            height: med.height * 0.04,
                            width: med.width * 0.7,
                            margin: EdgeInsets.only(bottom: 10.0),
                            child: TextField(
                                autocorrect: true,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: cColor().yellow),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: cColor().yellow),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                    
                   
                    // SizedBox(
                    //   height: med.height * 0.02,
                    // ),
                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       observerBool = !observerBool;
                    //       patientBool = false;
                    //       candidateBool = false;
                    //       examinerBool = false;
                    //     });
                    //   },
                    //   child: Container(
                    //       height: med.height * 0.06,
                    //       width: med.width * 0.8,
                    //       decoration: BoxDecoration(
                    //           color:
                    //               observerBool ? cColor().yellow : Colors.white,
                    //           borderRadius: BorderRadius.circular(20)),
                    //       child: Center(
                    //           child: Text(
                    //         "Observer",
                    //         style: TextStyle(
                    //             color: observerBool
                    //                 ? Colors.white
                    //                 : cColor().yellow,
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.bold),
                    //       ))),
                    // ),
                  ],
                ),
              ),
            ),
             SizedBox(
                      height: med.height * 0.02,
                    ),
             Container(
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "All",
                              style: TextStyle(
                                  fontSize: 19, fontFamily: "Rosario"),
                            ),
                            color: cColor().yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "Free",
                                style: TextStyle(
                                    fontSize: 19, fontFamily: "Rosario"),
                              ),
                              color: cColor().yellow,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(30))),
                          MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "Premium",
                                style: TextStyle(
                                    fontSize: 19, fontFamily: "Rosario"),
                              ),
                              color: cColor().yellow,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(30))),

                          // BottomButton(
                          //   backColors: Colors.black,
                          //   buttontext: "All",

                          //   function: () {},
                          // ),
                          // BottomButton(
                          //   backColors: cColor().yellow,
                          //   buttontext: "Free",
                          //   function: () {},
                          // ),
                          // BottomButton(
                          //   backColors: cColor().yellow,
                          //   buttontext: "Premium",
                          //   function: () {},
                          // ),
                        ],
                      ),
                    ),
                    // Container(
                    //   // padding: EdgeInsets.all(12),
                    //   height: med.height * 0.06,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(18.0),
                    //     child: Center(
                    //       child: Row(
                    //         children: [
                    //           IconButton(onPressed: (){}, icon: Icon(Icons.search),),
                    //           Expanded(child: TextField())
                    //         ],
                    //       ),
                    //     ),
                    //   )
                    // ),

            //Center
          ],
        ),
      ),
    );
  }
}
