import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ahadethModel.dart';
import 'package:islami/themeData.dart';

class ahadeth extends StatelessWidget {
List<ahadethModel>allAhdeth=[];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Image.asset("asset/image/ahadeth_image.png"),
        Divider(
          thickness: 5,
          color: themeData.color1,
        ),
        Text("Ahadeth"),
        Divider(
          thickness: 5,
          color: themeData.color1,
        ),
      ],
    ));
  }

  void loadHadeth() {
    rootBundle
        .loadString("asset/file/ahadeth.txt")
        .then((value) {
         List <String> ahadethList = value.trim().split("#");
       for (int i  = 0 ; i < ahadethList.length ; i++){
         String hadethOne = ahadethList[0];
         List <String>hadethOneLines=hadethOne.split("\n");
         String title = hadethOneLines[0];
         hadethOneLines.removeAt(0);
         List <String> content = hadethOneLines;
         ahadethModel AhadethModel=ahadethModel(title, content);
         allAhdeth.add(AhadethModel);
       }
    })
        .catchError((e) {
      print(e.toString());
    });
  }
}
