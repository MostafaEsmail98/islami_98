import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Tabs/ahadeth.dart';
import 'package:islami/Tabs/quran.dart';
import 'package:islami/Tabs/radio.dart';
import 'package:islami/Tabs/sebha.dart';
import 'package:islami/Tabs/setting.dart';
import 'package:islami/themeData.dart';

class Home extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("asset/image/background.png", fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
              title:
                  Text("Islami", style: Theme.of(context).textTheme.bodyLarge)),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("asset/image/moshaf_blue.png")),
                    label: "Quran",
                    backgroundColor: themeData.color1),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("asset/image/ahadeth_icon.png")),
                    label: "Ahadeth",
                    backgroundColor: themeData.color1),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("asset/image/radio_icon.png")),
                    label: "Radio",
                    backgroundColor: themeData.color1),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("asset/image/sebha_icon.png")),
                    label: "Sebha",
                    backgroundColor: themeData.color1),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "Settings",
                    backgroundColor: themeData.color1)
              ]),
          body: tap[index],
        ),
      ],
    );
  }
}
List<Widget>tap=[Quran(),ahadeth(),radio(),sebha(),setting(),];