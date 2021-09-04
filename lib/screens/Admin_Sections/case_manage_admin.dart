// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:sceelie/model_classes/case_manage_admin_model.dart';
// import '../../../color_class.dart';


// class CaseManageAdmin extends StatefulWidget {
//   const CaseManageAdmin({Key? key}) : super(key: key);

//   @override
//   _CaseManageAdminState createState() => _CaseManageAdminState();
// }

// class _CaseManageAdminState extends State<CaseManageAdmin> {
//   bool? checkedValue = false;
//   final List<CaseManageAdminModel> _caseManageAdmin = [
//     CaseManageAdminModel(
//         title: "Neoplasm", head: "Oncology", num: "032", subscription: 1),
//     CaseManageAdminModel(
//         title: "Lung Cancer", head: "Oncology", num: "452", subscription: 0),
//     CaseManageAdminModel(
//         title: "Measles",
//         head: "Communication Disease",
//         num: "365",
//         subscription: 1),
//     CaseManageAdminModel(
//         title: "Clavicular fx", head: "Oncology", num: "425", subscription: 0),
//     CaseManageAdminModel(
//         title: "Coma", head: "Traumatology", num: "456", subscription: 1),
//     CaseManageAdminModel(
//         title: "Jaundice", head: "Hepatologu", num: "100", subscription: 0),
//     CaseManageAdminModel(
//         title: "Neoplasm", head: "Oncology", num: "233", subscription: 1),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     Size med = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: cColor().black,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(20),
//             bottomRight: Radius.circular(20),
//           ),
//         ),
//         centerTitle: true,
//         title: Text(
//           "Hi, Nikita!",
//           style: GoogleFonts.rosario(
//             textStyle: TextStyle(
//               color: cColor().blue,
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12),
//           child: Column(
//             children: <Widget>[
//               Container(
//                   height: med.height * 0.08,
//                   child: Row(
//                     children: <Widget>[
//                       TopBarItem(
//                         icon: Icon(
//                           Icons.arrow_back,
//                           color: cColor().blue,
//                         ),
//                       ),
//                       Expanded(
//                           flex: 6,
//                           child: Center(
//                               child: Text(
//                             'Cases',
//                             style: GoogleFonts.roboto(
//                                 textStyle: TextStyle(
//                               color: cColor().yellow,
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                             )),
//                           ))),
//                       TopBarItem(
//                         icon: Icon(
//                           Icons.add,
//                           color: cColor().blue,
//                         ),
//                       ),
//                       SizedBox(
//                         width: med.width * 0.018,
//                       ),
//                       TopBarItem(
//                         icon: Icon(
//                           Icons.ballot,
//                           color: cColor().yellow,
//                           size: 30,
//                         ),
//                         mainclr: cColor().blue,
//                       ),
//                     ],
//                   )),
//               Container(
//                 color: Colors.amber,
//                 height: med.height * 0.015,
//               ),
//               SingleChildScrollView(
//                 child: Container(
//                   width: double.infinity,
//                   height: med.height * 0.62,
//                   decoration: BoxDecoration(
//                     color: cColor().blue,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         height: 46,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Expanded(
//                                 flex: 4,
//                                 child: Row(
//                                   children: [
//                                     StatefulBuilder(
//                                       builder: (BuildContext context,
//                                           StateSetter setState) {
//                                         return new Transform.scale(
//                                           scale: 1.2,
//                                           child: new Checkbox(
//                                             focusColor: cColor().black,
//                                             activeColor: cColor().yellow,
//                                             hoverColor: Colors.red,
//                                             checkColor: cColor().black,
//                                             value: checkedValue,
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 checkedValue = value;
//                                               });
//                                             },
//                                           ),
//                                         );
//                                       },
//                                     ),
                          
//                                     //No Text
//                                     Container(
//                                       margin: EdgeInsets.only(left: 5),
//                                       child: Text("No",
//                                           style: GoogleFonts.roboto(
//                                               textStyle: TextStyle(
//                                             color: cColor().yellow,
//                                             fontSize: 22,
//                                             fontWeight: FontWeight.bold,
//                                           ))),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               // Expanded(
//                               //   flex: 1,
//                               //   child: Container()),
//                               Expanded(
//                                   flex: 7,
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 4),
//                                         child: Text(
//                                           'Title',
//                                           style: TextStyle(
//                                               color: cColor().yellow,
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 22),
//                                         ),
//                                       ),
//                                       Icon(
//                                         Icons.arrow_drop_up_outlined,
//                                         color: cColor().yellow,
//                                         size: 30,
//                                       ),
//                                     ],
//                                   )),
//                             ]),
//                       ),
//                       Expanded(
//                         child: ListView.builder(
//                             itemCount: _caseManageAdmin.length,
//                             padding: EdgeInsets.symmetric(vertical: 6),
//                             itemBuilder: (_, index) {
//                               return Container(
//                                 margin: EdgeInsets.symmetric(vertical: 6),
//                                 height: med.height * 0.07,
//                                 child: Row(
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Expanded(
//                                         flex: 4,
//                                         child: Row(
//                                           children: [
//                                             StatefulBuilder(
//                                               builder: (BuildContext context,
//                                                   StateSetter setState) {
//                                                 return new Transform.scale(
//                                                   scale: 1.0,
//                                                   child: new Checkbox(
//                                                     focusColor: cColor().black,
//                                                     activeColor: cColor().yellow,
//                                                     hoverColor: Colors.red,
//                                                     checkColor: cColor().black,
//                                                     value: checkedValue,
//                                                     onChanged: (value) {
//                                                       setState(() {
//                                                         checkedValue = value;
//                                                       });
//                                                     },
//                                                   ),
//                                                 );
//                                               },
//                                             ),
                          
//                                             //No Text
//                                             Container(
//                                               margin: EdgeInsets.only(left: 5),
//                                               child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.spaceBetween,
//                                                 children: [
//                                                   Text(_caseManageAdmin[index].num,
//                                                       style: GoogleFonts.roboto(
//                                                           textStyle: TextStyle(
//                                                         color: cColor().yellow,
//                                                         fontSize: 16,
//                                                         fontWeight: FontWeight.bold,
//                                                       ))),
//                                                   SizedBox(
//                                                     width: 4,
//                                                   ),
//                                                   _caseManageAdmin[index].subscription == 1
//                                                       ? SvgPicture.asset(
//                                                           "assets/dollar.svg",
//                                                           height: 20,
//                                                           width: 20,
//                                                         )
//                                                       : Container(
//                                                           height: 20,
//                                                           width: 20,
//                                                         )
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Expanded(flex: 1, child: Container()),
//                                       Expanded(
//                                           flex: 7,
//                                           child: SingleChildScrollView(
//                                             child: Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: <Widget>[
//                                                 Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.start,
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.center,
//                                                   children: [
//                                                     Icon(
//                                                       Icons.local_offer_rounded,
//                                                       color: cColor().yellow,
//                                                       size: 14,
//                                                     ),
//                                                     Padding(
//                                                       padding:
//                                                           const EdgeInsets.symmetric(
//                                                               horizontal: 4),
//                                                       child: Text(
//                                                         _caseManageAdmin[index].head,
//                                                         style: TextStyle(
//                                                             color: cColor().yellow,
//                                                             fontWeight:
//                                                                 FontWeight.bold,
//                                                             fontSize: 15),
//                                                       ),
//                                                     )
//                                                   ],
//                                                 ),
//                                                 Text(
//                                                   _caseManageAdmin[index].title,
//                                                   style: TextStyle(
//                                                       color: cColor().yellow,
//                                                       fontWeight: FontWeight.bold,
//                                                       fontSize: 20),
//                                                 )
//                                               ],
//                                             ),
//                                           )),
//                                       Icon(
//                                         Icons.delete,
//                                         color: cColor().yellow,
//                                       ),
//                                       SizedBox(
//                                         width: med.width * 0.04,
//                                       ),
//                                     ]),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(29),
//                                   color: Colors.white,
//                                 ),
//                               );
//                             }),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TopBarItem extends StatelessWidget {
//   final Icon icon;

//   late Color? mainclr;

//   TopBarItem({Key? key, required this.icon, this.mainclr}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size med = MediaQuery.of(context).size;
//     return Expanded(
//         flex: 4,
//         child: Container(
//           height: med.height * 0.06,
//           decoration: BoxDecoration(
//               color: cColor().blue, borderRadius: BorderRadius.circular(22)),
//           child: Stack(
//             alignment: AlignmentDirectional.center,
//             children: [
//               mainclr != null
//                   ? Container(
//                       margin: EdgeInsets.only(bottom: 7),
//                       height: med.height * 0.03,
//                       width: med.width * 0.07,
//                       color: cColor().blue,
//                       child: Center(child: icon))
//                   : Container(
//                       height: med.height * 0.03,
//                       width: med.width * 0.062,
//                       color: cColor().yellow,
//                       child: Center(child: icon)),
//             ],
//           ),
//         ));
//   }
// }

// //SingleChildScrollView(
// //   child: Column(
// //     children: <Widget>[
// //       //Top Row
// //       Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //         children: <Widget>[
// //           //back
// //           Container(
// //             margin: EdgeInsets.only(left: 10, top: 5),
// //            height: med.height*0.055,
// //             width: med.width*0.2,
// //             decoration: BoxDecoration(
// //               color: cColor().blue,
// //               borderRadius: BorderRadius.circular(25),
// //             ),
// //             child: Center(
// //               child: Container(
// //                   height: med.height*0.035,
// //                 width: med.width*0.09,
// //                 color: cColor().yellow,
// //                 child: Icon(
// //                   Icons.arrow_back,
// //                   size: 25,
// //                   color: cColor().blue,
// //                 ),
// //               ),
// //             ),
// //           ),

// //           //Cases Text
// //           Container(
// //             margin: EdgeInsets.only(left: 30, top: 15),
// //             child: Text(
// //               "Cases",
// //               style: GoogleFonts.roboto(
// //                 textStyle: TextStyle(
// //                   color: cColor().yellow,
// //                   fontSize: 24,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //             ),
// //           ),

// //           //Add icon
// //           Container(
// //             margin: EdgeInsets.only(left: 30, top: 5),
// //            height: med.height*0.055,
// //             width: med.width*0.2,
// //             decoration: BoxDecoration(
// //               color: cColor().blue,
// //               borderRadius: BorderRadius.circular(25),
// //             ),
// //             child: Center(
// //               child: Container(
// //                height: med.height*0.035,
// //                 width: med.width*0.09,
// //                 color: cColor().yellow,
// //                 child: Icon(
// //                   Icons.add,
// //                   size: 25,
// //                   color: cColor().blue,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           Container(
// //             margin: EdgeInsets.only(left: 10, top: 5),
// //            height: med.height*0.055,
// //             width: med.width*0.2,
// //             decoration: BoxDecoration(
// //               color: cColor().blue,
// //               borderRadius: BorderRadius.circular(25),
// //             ),
// //             child: Center(
// //               child: Container(
// //                 height: med.height*0.035,
// //                 width: med.width*0.09,
// //                 color: cColor().blue,
// //                 child: Icon(
// //                   Icons.ballot,
// //                   size: 28,
// //                   color:cColor().yellow,
// //                 ),
// //               ),
// //             ),
// //           ),

// //           //ballot icon
// //           // Container(
// //           //   margin: EdgeInsets.only(left: 10, top: 5),
// //           //  height: 40,
// //           //   width: 85,
// //           //   decoration: BoxDecoration(
// //           //     color: cColor().blue,
// //           //     borderRadius: BorderRadius.circular(25),
// //           //   ),
// //           //   child: Center(
// //           //     child: Icon(Icons.ballot, size: 35, color: cColor().yellow,),
// //           //   ),
// //           // ),
// //         ],
// //       ),

// //       SizedBox(
// //         height: med.height * 0.02,
// //       ),

// //       //Center widget
// //       Center(
// //         child: Container(
// //           height: med.height * 0.70,
// //           width: med.width * 0.93,
// //           decoration: BoxDecoration(
// //             color: cColor().blue,
// //             borderRadius: BorderRadius.circular(10),
// //           ),
// //           child: Column(
// //             children: <Widget>[
// //               //checkBox and title
// // Container(
// //   height: 46,
// //   decoration: BoxDecoration(
// //     color: Colors.white,
// //     borderRadius: BorderRadius.circular(10),
// //   ),
// //   child: Row(
// //     children: <Widget>[
// //       //CheckBox
// //       Container(
// //         margin: EdgeInsets.only(left: 10),
// //         child: IconButton(
// //           onPressed: () {},
// //           icon: Icon(
// //             Icons.check_box_outline_blank_outlined,
// //             color: cColor().yellow,
// //             size: 30,
// //           ),
// //         ),
// //       ),

// //       //No Text
// //       Container(
// //         margin: EdgeInsets.only(left: 10),
// //         child: Text(
// //           "No",
// //           style: GoogleFonts.roboto(
// //             textStyle: TextStyle(
// //               color: cColor().yellow,
// //               fontSize: 18,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //         ),
// //       ),

// //       //Title Text
// //       Container(
// //         margin: EdgeInsets.only(left: 50),
// //         child: Text(
// //           "Title",
// //           style: GoogleFonts.roboto(
// //             textStyle: TextStyle(
// //               color: cColor().yellow,
// //               fontSize: 18,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //         ),
// //       ),

// //       //arrow icon
// //       Container(
// //         margin: EdgeInsets.only(left: 5),
// //         child: IconButton(
// //           onPressed: () {},
// //           icon: Icon(
// //             Icons.arrow_drop_up_outlined,
// //             color: cColor().yellow,
// //             size: 30,
// //           ),
// //         ),
// //       ),
// //     ],
// //   ),
// // ),

// //               SizedBox(
// //                 height: med.height * 0.01,
// //               ),

// //               // main list data
// //               Expanded(
// //                 child: InkWell(
// //                   onTap: () {
// //                     Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                             builder: (context) => CaseExaminer()));
// //                   },
// //                   child: ListView.builder(
// //                     itemCount: _caseManageAdmin.length,
// //                     shrinkWrap: true,
// //                     itemBuilder: (context, index) {
// //                       return Column(
// //                         children: <Widget>[
// //                           SizedBox(
// //                             height: med.height * 0.01,
// //                           ),
// //                           Center(
// //                             child: Container(
// //                               height: 42,
// //                               width: med.width * 0.87,
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(25),
// //                               ),
// //                               child: Row(
// //                                 children: <Widget>[
// //                                   //CheckBox
// //                                   Container(
// //                                     margin: EdgeInsets.only(left: 10),
// //                                     child: IconButton(
// //                                       onPressed: () {},
// //                                       icon: Icon(
// //                                         Icons
// //                                             .check_box_outline_blank_outlined,
// //                                         color: cColor().yellow,
// //                                         size: 20,
// //                                       ),
// //                                     ),
// //                                   ),

// //                                   //Number Text
// //                                   Container(
// //                                     width: med.width * 0.1,
// //                                     child: Text(
// //                                       _caseManageAdmin[index].num,
// //                                       style: GoogleFonts.roboto(
// //                                         textStyle: TextStyle(
// //                                           color: cColor().yellow,
// //                                           fontSize: 14,
// //                                           fontWeight: FontWeight.bold,
// //                                         ),
// //                                       ),
// //                                     ),
// //                                   ),

// //                                   SizedBox(
// //                                     width: med.width * 0.03,
// //                                   ),

// //                                   //Title
// //                                   Container(
// //                                     margin: EdgeInsets.only(top: 3),
// //                                     width: med.width * 0.4,
// //                                     child: Column(
// //                                       crossAxisAlignment:
// //                                           CrossAxisAlignment.start,
// //                                       children: <Widget>[
// //                                         //Icon and Text
// //                                         Row(
// //                                           children: <Widget>[
// //                                             Container(
// //                                               child: Icon(
// //                                                 Icons.local_offer_rounded,
// //                                                 color: cColor().yellow,
// //                                                 size: 10,
// //                                               ),
// //                                             ),
// //                                             Container(
// //                                               child: Text(
// //                                                 _caseManageAdmin[index]
// //                                                     .head,
// //                                                 style: GoogleFonts.roboto(
// //                                                   textStyle: TextStyle(
// //                                                     color:
// //                                                         cColor().yellow,
// //                                                     fontSize: 12,
// //                                                     fontWeight:
// //                                                         FontWeight.bold,
// //                                                   ),
// //                                                 ),
// //                                               ),
// //                                             ),
// //                                           ],
// //                                         ),

// //                                         //Title
// //                                         Container(
// //                                           margin: EdgeInsets.only(top: 2),
// //                                           child: Text(
// //                                             _caseManageAdmin[index].title,
// //                                             style: GoogleFonts.roboto(
// //                                               textStyle: TextStyle(
// //                                                 color: cColor().yellow,
// //                                                 fontSize: 16,
// //                                                 fontWeight:
// //                                                     FontWeight.bold,
// //                                               ),
// //                                             ),
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ),

// //                                   //Edit icon button
// //                                   Row(
// //                                     children: [
// //                                       Container(
// //                                         child: IconButton(
// //                                           constraints:
// //                                               BoxConstraints.tight(
// //                                                   Size(30, 40)),
// //                                           iconSize: 20,
// //                                           onPressed: () {},
// //                                           icon: Icon(
// //                                             Icons.edit,
// //                                             color: cColor().yellow,
// //                                             size: 26,
// //                                           ),
// //                                         ),
// //                                       ),
// //                                       Container(
// //                                         child: IconButton(
// //                                           constraints:
// //                                               BoxConstraints.tight(
// //                                                   Size(30, 40)),
// //                                           iconSize: 20,
// //                                           onPressed: () {},
// //                                           icon: Icon(
// //                                             Icons.delete,
// //                                             color: cColor().yellow,
// //                                             size: 26,
// //                                           ),
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       );
// //                     },
// //                   ),
// //                 ),
// //               ),

// //               // SizedBox(
// //               //   height: med.height*0.14,
// //               // ),

// //               // serach icon and search bar
// //               Container(
// //                 alignment: Alignment.bottomCenter,
// //                 height: 48,
// //                 decoration: BoxDecoration(
// //                   color: Colors.white,
// //                   borderRadius: BorderRadius.circular(10),
// //                 ),
// //                 child: Row(
// //                   children: <Widget>[
// //                     //Search icon
// //                     Container(
// //                       margin: EdgeInsets.only(left: 10),
// //                       child: IconButton(
// //                         onPressed: () {},
// //                         icon: Icon(
// //                           Icons.search,
// //                           color: cColor().yellow,
// //                           size: 30,
// //                         ),
// //                       ),
// //                     ),

// //                     //Seacrh bar
// //                     Container(
// //                       height: med.height * 0.04,
// //                       width: med.width * 0.7,
// //                       margin: EdgeInsets.only(bottom: 10.0),
// //                       child: TextField(
// //                           autocorrect: true,
// //                           decoration: InputDecoration(
// //                             enabledBorder: UnderlineInputBorder(
// //                               borderSide:
// //                                   BorderSide(color: cColor().yellow),
// //                             ),
// //                             focusedBorder: UnderlineInputBorder(
// //                               borderSide:
// //                                   BorderSide(color: cColor().yellow),
// //                             ),
// //                           )),
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),

// //      SizedBox(height: med.height*0.015),

// //       //Buttons
// //       Row(
// //         // mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           SizedBox(
// //             width: 12,
// //             height: 40,
// //           ),
// //           //All button
// //           Expanded(
// //             child: Container(
// //               // height:42,
// //               //  width: 80,
// //               child: RaisedButton(
// //                 onPressed: () {},
// //                 child: Text(
// //                   "All",
// //                   style: GoogleFonts.roboto(
// //                     fontSize: 18,
// //                     color: cColor().yellow,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //                 color: Colors.black,
// //                 textColor: cColor().yellow,
// //                 hoverColor: cColor().darkBrown,
// //                 highlightColor: cColor().darkBrown,
// //                 splashColor: cColor().darkBrown,
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(25),
// //                 ),
// //               ),
// //             ),
// //           ),

// //           //Free button
// //           Expanded(
// //             child: Container(
// //               margin: EdgeInsets.only(left: 10),
// //               // height: med.height*0.05,
// //               // width: med.width*0.27,
// //               child: RaisedButton(
// //                 onPressed: () {},
// //                 child: Text(
// //                   "Free",
// //                   style: GoogleFonts.roboto(
// //                     fontSize: 16,
// //                     color: cColor().darkBrown,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //                 color: cColor().yellow,
// //                 textColor: cColor().yellow,
// //                 hoverColor: cColor().yellow,
// //                 highlightColor: cColor().yellow,
// //                 splashColor: cColor().yellow,
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(25),
// //                 ),
// //               ),
// //             ),
// //           ),

// //           //Premium button
// //           Expanded(
// //             child: Container(
// //               margin: EdgeInsets.only(left: 10),
// //               // height: med.height*0.05,
// //               // width: med.width*0.27,
// //               child: RaisedButton(
// //                 onPressed: () {},
// //                 child: Text(
// //                   "Premium",
// //                   style: GoogleFonts.roboto(
// //                     fontSize: 16,
// //                     color: cColor().darkBrown,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //                 color: cColor().yellow,
// //                 textColor: cColor().darkBrown,
// //                 hoverColor: cColor().yellow,
// //                 highlightColor: cColor().yellow,
// //                 splashColor: cColor().yellow,
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(25),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(width: 12),
// //         ],
// //       ),
// //     ],
// //   ),
// // )
