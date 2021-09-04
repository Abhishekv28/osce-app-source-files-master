import 'package:flutter/material.dart';
import 'package:sceelie/Authentication/login_page.dart';

import '../color_class.dart';


class MainAdminScreen extends StatelessWidget {
  const MainAdminScreen({Key? key}) : super(key: key);
  Widget button(Size med, VoidCallback function, String text) {
    return Container(
      //margin: EdgeInsets.only(left: 15),
      height: med.height * 0.082,
      width: med.width * 0.5,
      child: RaisedButton(
        onPressed: function,
        child: Text(
          "$text",
          style: TextStyle(
              fontSize: 18, letterSpacing: 1.0, color: cColor().black),
        ),
        color: cColor().yellow,
        textColor: cColor().lightBlue,
        hoverColor: cColor().lightYello,
        highlightColor: cColor().lightYello,
        splashColor: cColor().lightYello,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size med = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: cColor().black,
      appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Hi, Nikita!',
            style: TextStyle(color: cColor().blue, fontSize: 24),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [],
          ),
          button(med, () {}, 'Case Management'),
          SizedBox(
            height: 20,
          ),
          button(med, () {}, 'User Management'),
          SizedBox(
            height: 20,
          ),
          button(med, () {}, 'User Section Temp'),
          SizedBox(
            height: 20,
          ),
          Container(
            //margin: EdgeInsets.only(left: 15),
            height: med.height * 0.08,
            width: med.width * 0.5,
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => Login()),
                    (route) => false);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: cColor().yellow,
                    height: 28,
                    width: 28,
                    child: Icon(
                      Icons.arrow_back,
                      color: cColor().blue,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Sign Out",
                    style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 1.0,
                        color: cColor().black),
                  ),
                ],
              ),
              color: cColor().blue,
              textColor: cColor().lightBlue,
              hoverColor: cColor().lightYello,
              highlightColor: cColor().lightYello,
              splashColor: cColor().lightYello,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
