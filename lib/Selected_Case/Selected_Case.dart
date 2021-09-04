import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sceelie/case_management/case_manage_admin.dart';

import '../color_class.dart';

class SelectedCase extends StatefulWidget {
  final String caseId;
  final String caseTitle;
  final int caseSubscription;

  const SelectedCase(
      {required this.caseId,
      required this.caseTitle,
      required this.caseSubscription});

  @override
  _SelectedCaseState createState() => _SelectedCaseState();
}

class _SelectedCaseState extends State<SelectedCase> {
  List<Widget> tablist = [
    Container(
      height: 60,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22))),
      child: Text(
        'sd',
        style: TextStyle(color: Colors.white),
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22), topRight: Radius.circular(22)),
      child: Tab(
        text: 'My Posts',
      ),
    ),
    Tab(
      text: 'Market',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.caseSubscription);
  }

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            SizedBox(
              height: med.height * 0.02,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: med.height * 0.08,
                child: Row(
                  children: [
                    // TopBarItem(
                    //     icon: Icon(
                    //   Icons.arrow_back,
                    //   color: cColor().blue,
                    // )),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: med.width * 0.20,
                        padding:
                            EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                        decoration: BoxDecoration(
                            color: cColor().blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          // width: med.width*0.01,
                          color: cColor().yellow,
                          child: Icon(
                            Icons.arrow_back,
                            color: cColor().blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        flex: 14,
                        child: Container(
                          height: med.height * 0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: Colors.white),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  widget.caseId,
                                  style: GoogleFonts.roboto(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    color: cColor().darkBrown,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                widget.caseTitle,
                                style: GoogleFonts.roboto(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  color: cColor().darkBrown,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselWithIndicatorDemo(),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                    color: Colors.brown,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                MaterialButton(
                    color: widget.caseSubscription == 1
                        ? Colors.brown
                        : Colors.brown[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text(
                      "Premium",
                      style: TextStyle(
                          color: widget.caseSubscription == 1
                              ? Colors.white
                              : Colors.grey[300],
                          fontSize: 18),
                    )),
                MaterialButton(
                    color: Colors.brown,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: Text(
                              "Are you sure you want to delete",
                              style: TextStyle(fontSize: 17),
                            ),
                            content: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text("78 Back pain",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            actions: [
                              CupertinoDialogAction(
                                child: Text("Yes",
                                    style: TextStyle(color: Colors.black)),
                                onPressed: () {},
                              ),
                              CupertinoDialogAction(
                                child: Text("No",
                                    style: TextStyle(color: Colors.black)),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                        Text(
                          "Delete",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    )),
              ],
            )

            // Container(
            //   width: double.infinity,
            //   height: med.height * 0.54,
            //   child: DefaultTabController(
            //     length: 3,
            //     child: Scaffold(
            //       backgroundColor: Color(0xfff8f8f8),
            //       appBar: PreferredSize(
            //         preferredSize: Size.fromHeight(40.0),
            //         child: Container(
            //           //     color: Colors.green,
            //           child: TabBar(
            //               labelPadding: EdgeInsets.zero,
            //               labelStyle: TextStyle(
            //                   fontFamily: 'RobotoCondensed-Regular',
            //                   fontWeight: FontWeight.bold),
            //               // indicatorPadding:
            //               //     EdgeInsets.symmetric(horizontal: 20),
            //               labelColor: Colors.purple,
            //               tabs: tablist),
            //         ),
            //       ),
            //       body: Padding(
            //         padding: const EdgeInsets.only(top: 8.0),
            //         child: TabBarView(children: tabviewlist),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  List<Widget> tabviewlist = [
    Container(
      height: 100,
      color: Colors.amber,
    ),
    Container(
      height: 100,
      color: Colors.amber,
    ),
    Container(
      height: 100,
      color: Colors.amber,
    )
  ];
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<Widget> imageSliders = [
    Container(
      width: 700,
      padding: EdgeInsets.all(5),
      // padding: EdgeInsets.symmetric(horizontal: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //   shape: BoxShape.circle,
        color: Colors.white,
      ),

      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      // child: Text("hello"),
    ),
    Container(
      width: 700,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //   shape: BoxShape.circle,
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Patient Script",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "You are a 60-year-old Retired librarian presenting with back pain"),
              Text("• Site-lower lumbar"),
              Text(
                  "• Onset-Lifted heavy pot plant yesterday while   gardening and twisted back"),
              Text("• Character-dull ache"),
              Text("• Radiation-nil"),
              Text("• Associated-"),
              Text(
                  "• No red flags (nil neurological deficits/infection/malignancy/fracture risk factors)"),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("PMHx- ", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("No PMHx,")
                ],
              ),
              Row(
                children: [
                  Text("Medications- ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("None")
                ],
              ),
              Row(
                children: [
                  Text("Smoking-",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("")
                ],
              ),
              Text(
                  "Social History-you live at home alone but do Rnot require any support with ADLs"),
              SizedBox(height: 20),
              Text("Examination Findings",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("• Slightly overweight woman"),
              Text("• Observationns within normal limits "),
              Text("• Tender at L3-L4 area"),
              Text("• Slump test positive"),
              Text("• Normalneuroexamination"),
            ],
          ),
        ),
      ),
    ),
    Container(
      width: 700,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //   shape: BoxShape.circle,
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Marking Guide + Case Notes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.orange[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Section 1: Focused Back Pain History",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("1.1 Onset, duration, previous episodes"),
                    Text("1.2 Preceding Injury, mechanism of injury"),
                    Text("1.3 SOCRATES"),
                    Text("1.4 Red"),
                    Text("1.5")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
// Card(
//   color: Colors.green,
//   child: Expanded(child: Container()),
// )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cColor().black,
      body: Container(
        height: 650,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          overflow: Overflow.clip,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageSliders.asMap().entries.map((entry) {
                  return Expanded(
                    child: GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        alignment: Alignment.topCenter,
                        height: 90.0,

                        //  margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            //   shape: BoxShape.circle,
                            color: _current == entry.key
                                ? cColor().blue
                                : cColor().TabUnselectedBlue),
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: entry.key == 0
                                ? Text(
                                    "Trigger",
                                    style: TextStyle(color: Colors.white),
                                  )
                                : entry.key == 1
                                    ? Text(
                                        "Patient Script",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    : Text(
                                        "Market",
                                        style: TextStyle(color: Colors.white),
                                      )),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Positioned(
              top: 30,
              child: Container(
                // width: 200,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //   shape: BoxShape.circle,
                  color: cColor().blue,
                ),
                width: MediaQuery.of(context).size.width * 0.93,
                child: CarouselSlider(
                  items: imageSliders,
                  carouselController: _controller,
                  options: CarouselOptions(
                      viewportFraction: 1,
                      autoPlay: false,
                      enlargeCenterPage: false,
                      //  aspectRatio: 3.1,
                      height: 460,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
