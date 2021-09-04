import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color_class.dart';



class Join extends StatefulWidget {
  const Join({Key? key}) : super(key: key);

  @override
  _JoinState createState() => _JoinState();
}

class _JoinState extends State<Join> {
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
        title: Text("OSCEelie Peer Practice",
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

 
              onTap: ()=>Navigator.pop(context),              child: Container(
                margin: EdgeInsets.only(left: 15, top: 10),
                height: med.height*0.055,
                width: med.width*0.2,
                decoration: BoxDecoration(
                  color: cColor().blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Container(
                    height: med.height*0.035,
                    width: med.width*0.1,
                    color: cColor().yellow,
                    child: Icon(Icons.arrow_back, size: 25, color: cColor().blue,),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: med.height*0.18,
            ),

            //Center
            Center(
              child: Container(
                height: med.height*0.22,
                width: med.width*0.93,
                decoration: BoxDecoration(
                  color: cColor().blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: <Widget>[
                    //Join a room to start
                    Container(
                      height: med.height*0.05,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Join a room to start",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: cColor().darkBrown,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),


                    SizedBox(
                      height: med.height*0.05,
                    ),

                    // TextField
                    Container(
                      height: med.height*0.05,
                      width: med.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                        cursorColor: Colors.deepOrange,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: cColor().black)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: cColor().black)),
                          hintStyle: TextStyle(
                              color: cColor().yellow,
                              fontSize: 18
                          ),
                          hintText: "ABCDEF",
                          contentPadding: EdgeInsets.only(top: 15, bottom: 1),
                          // prefixText: "+92",
                          // prefixStyle: TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 16,
                          // ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            SizedBox(
              height: med.height*0.2,
            ),

            Center(
              child: InkWell(
                onTap: (){
                  
                },
                child: Container(
                  height: med.height*0.05,
                  width: med.width*0.27,
                  child: RaisedButton(
                    onPressed: (){
                    },
                    child: Text("Join",
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
