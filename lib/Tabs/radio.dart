import 'package:flutter/material.dart';
import 'package:islami/themeData.dart';

class radio extends StatelessWidget {
  const radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset("asset/image/radio_image.png")),
        Text("إذاعه القرأن الكريم"),

        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous,size: 40,color: themeData.color1,)),
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: IconButton(onPressed: () {},alignment: Alignment.topLeft, icon: Icon(Icons.play_arrow,size: 60,color: themeData.color1)),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.skip_next,size: 40,color: themeData.color1)),
            ],
          ),
        )
      ],
    );
  }
}
