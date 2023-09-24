import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ahadethModel.dart';
import 'package:islami/detialsAhadeth.dart';
import 'package:islami/themeData.dart';

class ahadeth extends StatelessWidget {
  List<ahadethModel> allAhdeth = [];

  ahadeth() {
    loadHadeth();
  }

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
        Expanded(
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: themeData.color1,
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                );
              },
              itemBuilder: (context, index) {
                return InkWell(onTap: () {
                  Navigator.pushNamed(context, AhadethDetails.routeName,arguments: ahadethModel(
                      allAhdeth[index].title, allAhdeth[index].content,));
                },
                  child: Column(
                    children: [
                      Text(
                        allAhdeth[index].title,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                );
              },
              itemCount: allAhdeth.length),
        )
      ],
    ));
  }

  void loadHadeth() {
    rootBundle.loadString("asset/file/ahadeth.txt").then((value) {
      List<String> ahadethList = value.split("#");
      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLines = hadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> content = hadethOneLines;
        ahadethModel AhadethModel = ahadethModel(title, content);
        allAhdeth.add(AhadethModel);
      }
    }).catchError((e) {
      print(e.toString());
    });
  }
}
