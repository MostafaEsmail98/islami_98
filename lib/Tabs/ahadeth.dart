import 'package:flutter/material.dart';
import 'package:islami/themeData.dart';

class ahadeth extends StatelessWidget {
  const ahadeth({super.key});

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
}

