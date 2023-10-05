import 'package:flutter/material.dart';
import 'package:islami/BottonSheet/Language_Botton_sheet.dart';
import 'package:islami/BottonSheet/Theme_Botton_Sheet.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(AppLocalizations.of(context)!.language),
        ),
        InkWell(
          onTap: () {
            ShowLanguege();
          },
          child: Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(width: 1, color:Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(pro.language == "en" ? "English" : "العربية"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(AppLocalizations.of(context)!.theme),
        ),
        InkWell(
          onTap: () {
            ShowLanguege();
          },
          child: Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(width: 1, color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    ShowTheme();
                  },
                  child: Text(pro.mode == ThemeMode.light
                      ? AppLocalizations.of(context)!.light
                      : AppLocalizations.of(context)!.dark)),
            ),
          ),
        )
      ]),
    );
  }

  ShowLanguege() {
    showModalBottomSheet(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
      context: context,
      builder: (context) {
        return LanguageSheet();
      },
    );
  }

  ShowTheme() {
    showModalBottomSheet(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
      context: context,
      builder: (context) {
        return ThemeSheet();
      },
    );
  }

}
