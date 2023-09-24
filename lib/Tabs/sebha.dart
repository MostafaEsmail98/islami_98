import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/themeData.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  int counter = 0;
  int i=0;
  List<String> tsbeeh =["سبحان الله","الله اكبر","لا اله الا الله","استغفر الله",];


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 15,
        ),
        InkWell(onTap: () {
          counter++;
          if (counter==34){
            counter=0;
            i++;
            if (i==tsbeeh.length){
              i=0;
            }
          }

          setState(() {

          });
        }, child: Image.asset("asset/image/sebha.png")),
        SizedBox(
          height: 35,
        ),
        Text("عدد التسبيحات", style: themeData.LightTheme.textTheme.bodyMedium),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFC8B396),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 81,
          width: 69,
          child: Center(child: Text("$counter")),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: themeData.color1,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 51,
          width: 137,
          child: Center(
              child: Text(
            "${tsbeeh[i]}",
            style: themeData.LightTheme.textTheme.bodyMedium
                ?.copyWith(color: Colors.white),
          )),
        )
      ],
    ));
  }

}
