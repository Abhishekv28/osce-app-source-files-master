//   // Creates an alertDialog for the user to enter their email
//   import 'package:flutter/material.dart';

// Future _resetDialogBox(BuildContext context) {

//     return showDialog<String>(
//       context: context,
//       barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return CustomAlertDialog(
       
        
//         );
//       },
//     );
//   }


// class CustomAlertDialog extends StatefulWidget {
//   final String title;
  

 
//   @override
//   CustomAlertDialogState createState() {
//     return new CustomAlertDialogState();
//   }
// }

// class CustomAlertDialogState extends State<CustomAlertDialog> {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: AlertDialog(
//         title: new Text(widget.title),
//         content: new SingleChildScrollView(
//             child: Form(
         
//               child: ListBody(
//                 children: <Widget>[
//                   new Text(
//                     'Enter the Email Address associated with your account.',
//                     style: TextStyle(fontSize: 14.0),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(10.0),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       new Padding(
//                         padding: EdgeInsets.only(top: 8.0),
//                         child: Icon(
//                           Icons.email,
//                           size: 20.0,
//                         ),
//                       ),
//                       new Expanded(
//                         child: TextFormField(
                     
                         
//                           keyboardType: TextInputType.emailAddress,
//                           autofocus: true,
//                           decoration: new InputDecoration(
//                               border: InputBorder.none,
//                               hintText: 'Email',
//                               contentPadding:
//                               EdgeInsets.only(left: 70.0, top: 15.0),
//                               hintStyle:
//                               TextStyle(color: Colors.black, fontSize: 14.0)),
//                           style: TextStyle(color: Colors.black),

//                         ),
//                       )
//                     ],
//                   ),
//                   new Column(children: <Widget>[
//                     Container(
//                       decoration: new BoxDecoration(
//                           border: new Border(
//                               bottom: new BorderSide(
//                                   width: 0.5, color: Colors.black))),
//                     )
//                   ]),
//                 ],
//               ),
//             ),
//         ),
//         actions: <Widget>[
//           new FlatButton(
//             child: new Text(
//               'CANCEL',
//               style: TextStyle(color: Colors.black),
//             ),
//             onPressed: () {
//               Navigator.of(context).pop("");
//             },
//           ),
//           new FlatButton(
//             child: new Text(
//               'SEND EMAIL',
//               style: TextStyle(color: Colors.black),
//             ),
//             // onPressed: () {
//             //   if (_sendResetEmail()) {
//             //     Navigator.of(context).pop(_resetEmail);
//             //   }
//             // },
//           ),
//         ],
//       ),
//     );
//   }
// }

// String validateEmail(String value) {
//   String pattern =
//       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//   RegExp regExp = new RegExp(pattern);
//   if (value.length == 0) {
//     return "Email is required";
//   } else if (!regExp.hasMatch(value)) {
//     return "Invalid Email";
//   } else {
//     return null;
//   }
// }
