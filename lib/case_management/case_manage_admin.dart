import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sceelie/AllFunctions.dart';
import 'package:sceelie/Selected_Case/Selected_Case.dart';
import 'package:sceelie/model_classes/case_manage_admin_model.dart';
import '../../../color_class.dart';
// import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CaseManageAdmin extends StatefulWidget {
  const CaseManageAdmin({Key? key}) : super(key: key);

  @override
  _CaseManageAdminState createState() => _CaseManageAdminState();
}

class _CaseManageAdminState extends State<CaseManageAdmin> {
  bool? checkedValue = false;
  bool? checkedValue1 = false;
  String? chosenValue;
  String? chosenValue1;
  var selectedIndex;

  bool all = true;
  bool free = false;
  bool premium = false;
  TextEditingController _controller = TextEditingController();
  List<CaseManageAdminModel> _caseManageAdmin = [
    CaseManageAdminModel(
        title: "Neoplasm", head: "Oncology", num: "032", subscription: 1),
    CaseManageAdminModel(
        title: "Lung Cancer", head: "Oncology", num: "452", subscription: 0),
    CaseManageAdminModel(
        title: "Measles",
        head: "Communication Dis ",
        num: "365",
        subscription: 1),
    CaseManageAdminModel(
        title: "Clavicular fx", head: "Oncology", num: "425", subscription: 0),
    CaseManageAdminModel(
        title: "Coma", head: "Traumatology", num: "456", subscription: 1),
    CaseManageAdminModel(
        title: "Jaundice", head: "Hepatologu", num: "100", subscription: 0),
    CaseManageAdminModel(
        title: "Neoplasm", head: "Oncology", num: "233", subscription: 1),
  ];
  List<CaseManageAdminModel> _caseManageAdminForDisplay = [];
  List deleteItemsList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _caseManageAdminForDisplay = _caseManageAdmin;
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
        child: Container(
          height: med.height -
              (AppBar().preferredSize.height) -
              (MediaQuery.of(context).padding.top),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: <Widget>[
                Container(
                    height: med.height * 0.08,
                    child: Row(
                      children: <Widget>[
                        // InkWell(
                        //   onTap: () {
                        //     Navigator.pop(context);
                        //   },
                        //   child: TopBarItem(
                        //     icon: Icon(
                        //       Icons.arrow_back,
                        //       color: cColor().blue,
                        //     ),
                        //   ),
                        // ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: med.width * 0.20,
                            padding: EdgeInsets.symmetric(
                                horizontal: 23, vertical: 10),
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
                        Expanded(
                            flex: 6,
                            child: Center(
                                child: Text(
                              'Cases',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                color: cColor().yellow,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                            ))),
                        // TopBarItem(
                        //   icon: Icon(
                        //     Icons.add,
                        //     color: cColor().blue,
                        //   ),
                        // ),
                        SizedBox(
                          width: med.width * 0.018,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              print(deleteItemsList.length);
                              AllFunctions().removeMultipleItemsFromList(
                                  deleteItemsList, _caseManageAdminForDisplay);
                              deleteItemsList = [];
                              checkedValue1 = false;
                              // Fluttertoast.showToast(
                              //     msg:
                              //         "deleted ${deleteItemsList.length} items");
                            });
                          },
                          child: Container(
                            width: med.width * 0.20,
                            padding: EdgeInsets.symmetric(
                                horizontal: 23, vertical: 10),
                            decoration: BoxDecoration(
                                color: cColor().blue,
                                borderRadius: BorderRadius.circular(30)),
                            child: Container(
                              // width: med.width*0.01,
                              color: cColor().yellow,
                              child: Icon(
                                Icons.ballot,
                                color: cColor().blue,
                              ),
                            ),
                          ),
                        ),
                        // TopBarItem(
                        //   icon: Icon(
                        //     Icons.ballot,
                        //     color: cColor().yellow,
                        //     size: 30,
                        //     checkedValue:checkedValue
                        //   ),
                        //   mainclr: cColor().blue,
                        // ),
                      ],
                    )),
                Container(
                  //  color: Colors.amber,
                  height: med.height * 0.015,
                ),
                Container(
                  width: double.infinity,
                  height: med.height * 0.64,
                  decoration: BoxDecoration(
                    color: cColor().blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 46,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      fillColor: MaterialStateProperty.all(
                                          cColor().yellow),
                                      focusColor: cColor().black,
                                      activeColor: cColor().yellow,
                                      // hoverColor: Colors.red,
                                      checkColor: cColor().black,
                                      value: checkedValue,
                                      onChanged: (value) {
                                        setState(() {
                                          checkedValue = value;
                                          checkedValue1 = value;
                                        });
                                      },
                                    ),

                                    //No Text
                                    DropdownButton<String>(
                                      // value: chosenValue1,
                                      //elevation: 5,
                                      style: TextStyle(color: Colors.black),

                                      hint: Text(
                                        "No",
                                        style: TextStyle(
                                            color: cColor().yellow,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),

                                      items: <String>[
                                        'Ascending',
                                        'Descending',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),

                                      onChanged: (value) {
                                        setState(() {
                                          chosenValue1 = value!;
                                          print(chosenValue1);
                                          if (chosenValue1 == "Ascending") {
                                            _caseManageAdminForDisplay
                                              ..sort(
                                                (a, b) {
                                                  return a.num.toString()
                                                      .compareTo(b.num);
                                                },
                                              );
                                            setState(() {});
                                          }
                                          if (chosenValue1 == "Descending") {
                                            _caseManageAdminForDisplay
                                              ..sort(
                                                (a, b) {
                                                  return b.num.toString()
                                                      .compareTo(a.num);
                                                },
                                              );
                                            setState(() {});
                                          }
                                        });
                                      },
                                      // onChanged: (String value) {
                                      //   setState(() {
                                      //     _chosenValue = value;
                                      //   });
                                      // },
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(width:140,),
                              // Expanded(
                              //   flex: 1,
                              //   child: Container()),
                              Expanded(
                                  flex: 5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      DropdownButton<String>(
                                        // value: chosenValue,
                                        //elevation: 5,
                                        style: TextStyle(color: Colors.black),

                                        items: <String>[
                                          'A-Z',
                                          'Z-A',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        hint: Text(
                                          "Title",
                                          style: TextStyle(
                                              color: cColor().yellow,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            chosenValue = value!;
                                            print(chosenValue);
                                            if (chosenValue == "A-Z") {
                                              _caseManageAdminForDisplay
                                                ..sort(
                                                  (a, b) {
                                                    return a.title
                                                        .toString()
                                                        .toLowerCase()
                                                        .compareTo(b.title
                                                            .toString()
                                                            .toLowerCase());
                                                  },
                                                );
                                              setState(() {});
                                            }
                                            if (chosenValue == "Z-A") {
                                              _caseManageAdminForDisplay
                                                ..sort(
                                                  (a, b) {
                                                    return b.title
                                                        .toString()
                                                        .toLowerCase()
                                                        .compareTo(a.title
                                                            .toString()
                                                            .toLowerCase());
                                                  },
                                                );
                                              setState(() {});
                                            }
                                          });
                                        },
                                        // onChanged: (String value) {
                                        //   setState(() {
                                        //     _chosenValue = value;
                                        //   });
                                        // },
                                      ),
                                      // IconButton(
                                      //   onPressed: () {

                                      //   },
                                      //   icon: Icon(
                                      //       Icons.arrow_drop_up_outlined),
                                      //   color: cColor().yellow,
                                      // ),
                                    ],
                                  )),
                            ]),
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: _caseManageAdminForDisplay.length,
                            padding: EdgeInsets.symmetric(vertical: 6),
                            itemBuilder: (_, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => SelectedCase(
                                            caseId: _caseManageAdminForDisplay[
                                                    index]
                                                .num
                                                .toString(),
                                            caseTitle:
                                                _caseManageAdminForDisplay[
                                                        index]
                                                    .title,
                                            caseSubscription:
                                                _caseManageAdminForDisplay[
                                                        index]
                                                    .subscription,
                                          )));
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 6),
                                  height: med.height * 0.07,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 6),
                                                child: StatefulBuilder(
                                                  builder: (BuildContext
                                                          context,
                                                      StateSetter setState) {
                                                    return new Checkbox(
                                                      // overlayColor:MaterialStateProperty.all(cColor().yellow),
                                                      fillColor:
                                                          MaterialStateProperty
                                                              .all(cColor()
                                                                  .yellow),

                                                      focusColor:
                                                          cColor().black,
                                                      activeColor:
                                                          cColor().yellow,
                                                      //    hoverColor: Colors.red,
                                                      checkColor:
                                                          cColor().black,
                                                      value: checkedValue1,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          // selectedIndex = index;
                                                          {
                                                            // if (selectedIndex ==
                                                            //     index) {
                                                            checkedValue1 =
                                                                value;
                                                            // }
                                                          }

                                                          // AllFunctions().checkItem(
                                                          //     selectedIndex,
                                                          //     index,
                                                          //     value,
                                                          //     checkedValue1);
                                                          // if (checkedValue1 ==
                                                          //     true) {
                                                          AllFunctions()
                                                              .addItemsinDeleteItemsList(
                                                                  deleteItemsList,
                                                                  index);
                                                          // } else {
                                                          //   AllFunctions()
                                                          //       .removeSingleItem(
                                                          //           deleteItemsList,
                                                          //           index);
                                                          // }
                                                        });
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),

                                              //No Text
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 2),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        _caseManageAdminForDisplay[
                                                                index]
                                                            .num,
                                                        style:
                                                            GoogleFonts.roboto(
                                                                textStyle:
                                                                    TextStyle(
                                                          color:
                                                              cColor().yellow,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ))),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    _caseManageAdminForDisplay[
                                                                    index]
                                                                .subscription ==
                                                            1
                                                        ? SvgPicture.asset(
                                                            "assets/dollar.svg",
                                                            height: 16.67,
                                                            width: 16.67,
                                                          )
                                                        : Container(
                                                            height: 16.67,
                                                            width: 16.67,
                                                          )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        // Expanded(flex: 1, child: Container()),
                                        Expanded(
                                            flex: 6,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .local_offer_rounded,
                                                        color: cColor().yellow,
                                                        size: 14,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 4),
                                                        child: Text(
                                                          _caseManageAdminForDisplay[
                                                                  index]
                                                              .head,
                                                          style: TextStyle(
                                                              color: cColor()
                                                                  .yellow,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    _caseManageAdminForDisplay[
                                                            index]
                                                        .title,
                                                    style: TextStyle(
                                                        color: cColor().yellow,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  )
                                                ],
                                              ),
                                            )),

                                        IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return CupertinoAlertDialog(
                                                  title: Text(
                                                    "DELETE",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  content: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10.0),
                                                    child: Text(
                                                        "Are you sure you want to delete ${_caseManageAdmin[index].title}",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20)),
                                                  ),
                                                  actions: [
                                                    CupertinoDialogAction(
                                                      child: Text("Yes",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black)),
                                                      onPressed: () {
                                                        Fluttertoast.showToast(
                                                            msg:
                                                                "${_caseManageAdminForDisplay[index].title} is Deleted");
                                                        setState(() {
                                                          AllFunctions()
                                                              .removeSingleItem(
                                                                  _caseManageAdminForDisplay,
                                                                  index);
                                                        });

                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                    CupertinoDialogAction(
                                                      child: Text("No",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black)),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                            // AwesomeDialog(
                                            //   btnOkText: 'Yes',
                                            //   btnCancelText: "No",
                                            //   dialogBackgroundColor:
                                            //       cColor().black,
                                            //   btnOkColor: cColor().yellow,
                                            //   context: context,
                                            //   dialogType:
                                            //       DialogType.INFO_REVERSED,
                                            //   borderSide: BorderSide(
                                            //       color: cColor().yellow,
                                            //       width: 2),
                                            //   buttonsBorderRadius:
                                            //       BorderRadius.all(
                                            //           Radius.circular(2)),
                                            //   headerAnimationLoop: false,
                                            //   animType: AnimType.BOTTOMSLIDE,
                                            //   title: 'DELETE',
                                            //   desc:
                                            //       'Are you Sure want to Delete ${_caseManageAdmin[index].title}',
                                            //   showCloseIcon: true,
                                            //   btnCancelOnPress: () {},
                                            //   btnOkOnPress: () {
                                            //     setState(() {
                                            //       _caseManageAdminForDisplay
                                            //           .removeAt(index);
                                            //     });

                                            //     Fluttertoast.showToast(
                                            //         msg:
                                            //             "${_caseManageAdminForDisplay[index].title} is Deleted",
                                            //         toastLength:
                                            //             Toast.LENGTH_SHORT,
                                            //         gravity:
                                            //             ToastGravity.CENTER,
                                            //         timeInSecForIosWeb: 1,
                                            //         backgroundColor:
                                            //             cColor().black,
                                            //         textColor: cColor().yellow,
                                            //         fontSize: 16.0);
                                            //   },
                                            // )..show();
                                          },
                                          icon: Icon(
                                            Icons.delete,
                                            color: cColor().yellow,
                                          ),
                                        ),
                                        SizedBox(
                                          width: med.width * 0.04,
                                        ),
                                      ]),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(29),
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            }),
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
                                  controller: _controller,
                                  autocorrect: true,
                                  onChanged: (text) {
                                    text = text.toLowerCase();
                                    setState(() {
                                      _caseManageAdminForDisplay =
                                          _caseManageAdmin.where((element) {
                                        var _caseManageAdminTitle =
                                            element.title.toLowerCase();
                                        return _caseManageAdminTitle
                                            .contains(text);
                                      }).toList();
                                    });
                                  },
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
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 6),
                        height: med.height * 0.06,
                        // color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  _caseManageAdminForDisplay = _caseManageAdmin;
                                  all = true;
                                  free = false;
                                  premium = false;
                                });
                              },
                              child: Text(
                                "All",
                                style: TextStyle(
                                    fontSize: 19,
                                    fontFamily: "Rosario",
                                    color: all ? Colors.white : Colors.black),
                              ),
                              color: all ? Colors.black : cColor().yellow,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    all = false;
                                    free = true;
                                    premium = false;
                                    _caseManageAdminForDisplay =
                                        _caseManageAdmin.where((element) {
                                      var _caseManageAdminTitle =
                                          element.subscription.toString();
                                      return _caseManageAdminTitle
                                          .contains("0");
                                    }).toList();
                                  });
                                },
                                child: Text(
                                  "Free",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontFamily: "Rosario",
                                      color:
                                          free ? Colors.white : cColor().black),
                                ),
                                color: free ? Colors.black : cColor().yellow,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    free = false;
                                    all = false;
                                    premium = true;
                                    _caseManageAdminForDisplay =
                                        _caseManageAdmin.where((element) {
                                      var _caseManageAdminTitle =
                                          element.subscription.toString();
                                      return _caseManageAdminTitle
                                          .contains("1");
                                    }).toList();
                                  });
                                },
                                child: Text(
                                  "Premium",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontFamily: "Rosario",
                                      color: premium
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                color: premium ? Colors.black : cColor().yellow,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),

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
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  late final Color backColors;
  late final String buttontext;
  late final VoidCallback function;
  BottomButton(
      {required this.backColors,
      required this.buttontext,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: function,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backColors,
          ),
          child: Center(
            child: Text(
              '${buttontext}',
              style: GoogleFonts.roboto(
                letterSpacing: 1,
                fontSize: 18,
                color: backColors == Colors.black
                    ? cColor().yellow
                    : cColor().darkBrown,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class TopBarItem extends StatefulWidget {
//   final Icon icon;

//   late Color? mainclr;
//   final checkedValue;

//   TopBarItem({Key? key, required this.icon, this.mainclr, this.checkedValue})
//       : super(key: key);

//   @override
//   _TopBarItemState createState() => _TopBarItemState();
// }

// class _TopBarItemState extends State<TopBarItem> {
//   @override
//   Widget build(BuildContext context) {
//     Size med = MediaQuery.of(context).size;
//     return Expanded(
//         flex: 4,
//         child: InkWell(
//           onTap: () {
//             setState(() {
              
//             });
//           },
//           child: Container(
//             height: med.height * 0.06,
//             decoration: BoxDecoration(
//                 color: cColor().blue, borderRadius: BorderRadius.circular(22)),
//             child: Stack(
//               alignment: AlignmentDirectional.center,
//               children: [
//                 widget.mainclr != null
//                     ? Container(
//                         margin: EdgeInsets.only(bottom: 7),
//                         height: med.height * 0.03,
//                         width: med.width * 0.07,
//                         color: cColor().blue,
//                         child: Center(child: widget.icon))
//                     : Container(
//                         height: med.height * 0.035,
//                         width: med.width * 0.062,
//                         color: cColor().yellow,
//                         child: Center(child: widget.icon)),
//               ],
//             ),
//           ),
//         ));
//   }
// }

//SingleChildScrollView(
//   child: Column(
//     children: <Widget>[
//       //Top Row
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           //back
//           Container(
//             margin: EdgeInsets.only(left: 10, top: 5),
//            height: med.height*0.055,
//             width: med.width*0.2,
//             decoration: BoxDecoration(
//               color: cColor().blue,
//               borderRadius: BorderRadius.circular(25),
//             ),
//             child: Center(
//               child: Container(
//                   height: med.height*0.035,
//                 width: med.width*0.09,
//                 color: cColor().yellow,
//                 child: Icon(
//                   Icons.arrow_back,
//                   size: 25,
//                   color: cColor().blue,
//                 ),
//               ),
//             ),
//           ),

//           //Cases Text
//           Container(
//             margin: EdgeInsets.only(left: 30, top: 15),
//             child: Text(
//               "Cases",
//               style: GoogleFonts.roboto(
//                 textStyle: TextStyle(
//                   color: cColor().yellow,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),

//           //Add icon
//           Container(
//             margin: EdgeInsets.only(left: 30, top: 5),
//            height: med.height*0.055,
//             width: med.width*0.2,
//             decoration: BoxDecoration(
//               color: cColor().blue,
//               borderRadius: BorderRadius.circular(25),
//             ),
//             child: Center(
//               child: Container(
//                height: med.height*0.035,
//                 width: med.width*0.09,
//                 color: cColor().yellow,
//                 child: Icon(
//                   Icons.add,
//                   size: 25,
//                   color: cColor().blue,
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(left: 10, top: 5),
//            height: med.height*0.055,
//             width: med.width*0.2,
//             decoration: BoxDecoration(
//               color: cColor().blue,
//               borderRadius: BorderRadius.circular(25),
//             ),
//             child: Center(
//               child: Container(
//                 height: med.height*0.035,
//                 width: med.width*0.09,
//                 color: cColor().blue,
//                 child: Icon(
//                   Icons.ballot,
//                   size: 28,
//                   color:cColor().yellow,
//                 ),
//               ),
//             ),
//           ),

//           //ballot icon
//           // Container(
//           //   margin: EdgeInsets.only(left: 10, top: 5),
//           //  height: 40,
//           //   width: 85,
//           //   decoration: BoxDecoration(
//           //     color: cColor().blue,
//           //     borderRadius: BorderRadius.circular(25),
//           //   ),
//           //   child: Center(
//           //     child: Icon(Icons.ballot, size: 35, color: cColor().yellow,),
//           //   ),
//           // ),
//         ],
//       ),

//       SizedBox(
//         height: med.height * 0.02,
//       ),

//       //Center widget
//       Center(
//         child: Container(
//           height: med.height * 0.70,
//           width: med.width * 0.93,
//           decoration: BoxDecoration(
//             color: cColor().blue,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Column(
//             children: <Widget>[
//               //checkBox and title
// Container(
//   height: 46,
//   decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.circular(10),
//   ),
//   child: Row(
//     children: <Widget>[
//       //CheckBox
//       Container(
//         margin: EdgeInsets.only(left: 10),
//         child: IconButton(
//           onPressed: () {},
//           icon: Icon(
//             Icons.check_box_outline_blank_outlined,
//             color: cColor().yellow,
//             size: 30,
//           ),
//         ),
//       ),

//       //No Text
//       Container(
//         margin: EdgeInsets.only(left: 10),
//         child: Text(
//           "No",
//           style: GoogleFonts.roboto(
//             textStyle: TextStyle(
//               color: cColor().yellow,
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),

//       //Title Text
//       Container(
//         margin: EdgeInsets.only(left: 50),
//         child: Text(
//           "Title",
//           style: GoogleFonts.roboto(
//             textStyle: TextStyle(
//               color: cColor().yellow,
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),

//       //arrow icon
//       Container(
//         margin: EdgeInsets.only(left: 5),
//         child: IconButton(
//           onPressed: () {},
//           icon: Icon(
//             Icons.arrow_drop_up_outlined,
//             color: cColor().yellow,
//             size: 30,
//           ),
//         ),
//       ),
//     ],
//   ),
// ),

//               SizedBox(
//                 height: med.height * 0.01,
//               ),

//               // main list data
//               Expanded(
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => CaseExaminer()));
//                   },
//                   child: ListView.builder(
//                     itemCount: _caseManageAdmin.length,
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) {
//                       return Column(
//                         children: <Widget>[
//                           SizedBox(
//                             height: med.height * 0.01,
//                           ),
//                           Center(
//                             child: Container(
//                               height: 42,
//                               width: med.width * 0.87,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(25),
//                               ),
//                               child: Row(
//                                 children: <Widget>[
//                                   //CheckBox
//                                   Container(
//                                     margin: EdgeInsets.only(left: 10),
//                                     child: IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(
//                                         Icons
//                                             .check_box_outline_blank_outlined,
//                                         color: cColor().yellow,
//                                         size: 20,
//                                       ),
//                                     ),
//                                   ),

//                                   //Number Text
//                                   Container(
//                                     width: med.width * 0.1,
//                                     child: Text(
//                                       _caseManageAdmin[index].num,
//                                       style: GoogleFonts.roboto(
//                                         textStyle: TextStyle(
//                                           color: cColor().yellow,
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ),
//                                   ),

//                                   SizedBox(
//                                     width: med.width * 0.03,
//                                   ),

//                                   //Title
//                                   Container(
//                                     margin: EdgeInsets.only(top: 3),
//                                     width: med.width * 0.4,
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: <Widget>[
//                                         //Icon and Text
//                                         Row(
//                                           children: <Widget>[
//                                             Container(
//                                               child: Icon(
//                                                 Icons.local_offer_rounded,
//                                                 color: cColor().yellow,
//                                                 size: 10,
//                                               ),
//                                             ),
//                                             Container(
//                                               child: Text(
//                                                 _caseManageAdmin[index]
//                                                     .head,
//                                                 style: GoogleFonts.roboto(
//                                                   textStyle: TextStyle(
//                                                     color:
//                                                         cColor().yellow,
//                                                     fontSize: 12,
//                                                     fontWeight:
//                                                         FontWeight.bold,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),

//                                         //Title
//                                         Container(
//                                           margin: EdgeInsets.only(top: 2),
//                                           child: Text(
//                                             _caseManageAdmin[index].title,
//                                             style: GoogleFonts.roboto(
//                                               textStyle: TextStyle(
//                                                 color: cColor().yellow,
//                                                 fontSize: 16,
//                                                 fontWeight:
//                                                     FontWeight.bold,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),

//                                   //Edit icon button
//                                   Row(
//                                     children: [
//                                       Container(
//                                         child: IconButton(
//                                           constraints:
//                                               BoxConstraints.tight(
//                                                   Size(30, 40)),
//                                           iconSize: 20,
//                                           onPressed: () {},
//                                           icon: Icon(
//                                             Icons.edit,
//                                             color: cColor().yellow,
//                                             size: 26,
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         child: IconButton(
//                                           constraints:
//                                               BoxConstraints.tight(
//                                                   Size(30, 40)),
//                                           iconSize: 20,
//                                           onPressed: () {},
//                                           icon: Icon(
//                                             Icons.delete,
//                                             color: cColor().yellow,
//                                             size: 26,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       );
//                     },
//                   ),
//                 ),
//               ),

//               // SizedBox(
//               //   height: med.height*0.14,
//               // ),

//               // serach icon and search bar
//               Container(
//                 alignment: Alignment.bottomCenter,
//                 height: 48,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   children: <Widget>[
//                     //Search icon
//                     Container(
//                       margin: EdgeInsets.only(left: 10),
//                       child: IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.search,
//                           color: cColor().yellow,
//                           size: 30,
//                         ),
//                       ),
//                     ),

//                     //Seacrh bar
//                     Container(
//                       height: med.height * 0.04,
//                       width: med.width * 0.7,
//                       margin: EdgeInsets.only(bottom: 10.0),
//                       child: TextField(
//                           autocorrect: true,
//                           decoration: InputDecoration(
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide:
//                                   BorderSide(color: cColor().yellow),
//                             ),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide:
//                                   BorderSide(color: cColor().yellow),
//                             ),
//                           )),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),

//      SizedBox(height: med.height*0.015),

//       //Buttons
//       Row(
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//             width: 12,
//             height: 40,
//           ),
//           //All button
//           Expanded(
//             child: Container(
//               // height:42,
//               //  width: 80,
//               child: RaisedButton(
//                 onPressed: () {},
//                 child: Text(
//                   "All",
//                   style: GoogleFonts.roboto(
//                     fontSize: 18,
//                     color: cColor().yellow,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 color: Colors.black,
//                 textColor: cColor().yellow,
//                 hoverColor: cColor().darkBrown,
//                 highlightColor: cColor().darkBrown,
//                 splashColor: cColor().darkBrown,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//               ),
//             ),
//           ),

//           //Free button
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.only(left: 10),
//               // height: med.height*0.05,
//               // width: med.width*0.27,
//               child: RaisedButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Free",
//                   style: GoogleFonts.roboto(
//                     fontSize: 16,
//                     color: cColor().darkBrown,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 color: cColor().yellow,
//                 textColor: cColor().yellow,
//                 hoverColor: cColor().yellow,
//                 highlightColor: cColor().yellow,
//                 splashColor: cColor().yellow,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//               ),
//             ),
//           ),

//           //Premium button
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.only(left: 10),
//               // height: med.height*0.05,
//               // width: med.width*0.27,
//               child: RaisedButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Premium",
//                   style: GoogleFonts.roboto(
//                     fontSize: 16,
//                     color: cColor().darkBrown,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 color: cColor().yellow,
//                 textColor: cColor().darkBrown,
//                 hoverColor: cColor().yellow,
//                 highlightColor: cColor().yellow,
//                 splashColor: cColor().yellow,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(width: 12),
//         ],
//       ),
//     ],
//   ),
// )
