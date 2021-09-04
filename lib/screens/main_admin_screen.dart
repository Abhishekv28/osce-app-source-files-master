import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sceelie/Authentication/login_page.dart';
import 'package:sceelie/case_management/case_manage_admin.dart';
import 'package:sceelie/screens/user_management/Users.dart';
import 'package:sceelie/screens/user_management/welcome_user_screen.dart';

import '../color_class.dart';
import 'Admin_Sections/case_manage_admin.dart';

class MainAdminPage extends StatefulWidget {
  const MainAdminPage({Key? key}) : super(key: key);

  @override
  _MainAdminPageState createState() => _MainAdminPageState();
}

class _MainAdminPageState extends State<MainAdminPage> {
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
          "Hi, Nikita!",
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
          children: <Widget>[
            SizedBox(
              height: med.height * 0.4,
            ),

            //Case Management
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CaseManageAdmin()));
                },
                child: Container(
                  height: med.height * 0.06,
                  width: med.width * 0.6,
                  decoration: BoxDecoration(
                    color: cColor().yellow,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Case Management",
                      style: GoogleFonts.rosario(
                        textStyle: TextStyle(
                          color: cColor().darkBrown,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.03,
            ),

            //User Management
            // Center(
            //   child: Container(
            //     height: med.height * 0.06,
            //     width: med.width * 0.6,
            //     decoration: BoxDecoration(
            //       color: cColor().yellow,
            //       borderRadius: BorderRadius.circular(25),
            //     ),
            //     child: Center(
            //       child: Text(
            //         "User Management",
            //         style: GoogleFonts.roboto(
            //           textStyle: TextStyle(
            //             color: cColor().darkBrown,
            //             fontSize: 18,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            // SizedBox(
            //   height: med.height * 0.03,
            // ),

            //User Management
            Center(
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeUser())),
                child: Container(
                  height: med.height * 0.06,
                  width: med.width * 0.6,
                  decoration: BoxDecoration(
                    color: cColor().yellow,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "User Management",
                      style: GoogleFonts.rosario(
                        textStyle: TextStyle(
                          color: cColor().darkBrown,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Rosario"
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: med.height * 0.03,
            ),

            //Signout
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Container(
                  height: med.height * 0.06,
                  width: med.width * 0.6,
                  decoration: BoxDecoration(
                    color: cColor().blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          height: med.height * 0.038,
                          width: med.width * 0.075,
                          color: cColor().yellow,
                          child: Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: cColor().blue,
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 70),
                          child: Text(
                            "Sign Out",
                            style: GoogleFonts.rosario(
                              textStyle: TextStyle(
                                color: cColor().yellow,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Rosario"
                              ),
                            ),
                          ),
                        ),
                      ],
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
