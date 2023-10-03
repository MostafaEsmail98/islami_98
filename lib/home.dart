import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Tabs/ahadeth.dart';
import 'package:islami/Tabs/quran.dart';
import 'package:islami/Tabs/radio.dart';
import 'package:islami/Tabs/sebha.dart';
import 'package:islami/Tabs/setting.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/themeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(pro.mode==ThemeMode.light?"asset/image/background.png":"asset/image/bg.png",
            fit: BoxFit.cover, width: double.infinity),
        Scaffold(
          appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.appTitle,
                  style: Theme.of(context).textTheme.bodyLarge)),
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
                    backgroundColor: Theme.of(context).colorScheme.background),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("asset/image/ahadeth_icon.png")),
                    label: "Ahadeth",
                    backgroundColor:Theme.of(context).colorScheme.background),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("asset/image/radio_icon.png")),
                    label: "Radio",
                    backgroundColor: Theme.of(context).colorScheme.background),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("asset/image/sebha_icon.png")),
                    label: "Sebha",
                    backgroundColor: Theme.of(context).colorScheme.background),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "Settings",
                    backgroundColor:Theme.of(context).colorScheme.background)
              ]),
          body: tap[index],
        ),
      ],
    );
  }
}

List<Widget> tap = [
  Quran(),
  ahadeth(),
  radio(),
  sebha(),
  setting(),
];
