import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/themeData.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  int counter = 0;
  int i = 0;
  List<String> tsbeeh = [
    "سبحان الله",
    "الله اكبر",
    "لا اله الا الله",
    "استغفر الله",
  ];

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 15,
        ),
        InkWell(
            onTap: () {
              counter++;
              if (counter == 34) {
                counter = 0;
                i++;
                if (i == tsbeeh.length) {
                  i = 0;
                }
              }

              setState(() {});
            },
            child: Image.asset(pro.mode == ThemeMode.light
                ? "asset/image/sebha.png"
                : "asset/image/sebha_dark.png")),
        SizedBox(
          height: 35,
        ),
        Text(AppLocalizations.of(context)!.tasbehat,
            style: pro.mode == ThemeMode.light
                ? themeData.LightTheme.textTheme.bodyMedium
                : themeData.DarkTheme.textTheme.bodyMedium),
        Container(
          decoration: BoxDecoration(
              color: pro.mode == ThemeMode.light
                  ? Color(0xFFC8B396)
                  : Color(0xff141A2E),
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
              color: Theme.of(context).colorScheme.primary,
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
