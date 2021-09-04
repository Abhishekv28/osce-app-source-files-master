
import 'package:flutter/material.dart';

import '../color_class.dart';


class MainButton extends StatelessWidget {
  final VoidCallback functioncall;
  final String buttontext;
  final double radius;
  final Color color;
  final Widget? loaderwidget ;
final TextStyle? style ;
  const MainButton(
      {this.style, required this.functioncall,this.loaderwidget,required this.buttontext,required this.radius,required this.color});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
        onPressed: functioncall,
        child: SizedBox(
            height:size.height * 0.08,
            width: size.width * 0.85,
            child: Center(
                child:buttontext == null ? loaderwidget : Text(
              buttontext ,
              style:style==null? TextStyle(
                fontSize: 18
              ):style
            ))),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                color == null ? cColor().yellow : color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(radius == null ? 29.0 : radius),
            ))));
  }
}