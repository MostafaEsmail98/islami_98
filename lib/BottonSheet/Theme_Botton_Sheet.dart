import 'package:flutter/material.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/themeData.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeSheet extends StatelessWidget {
  const ThemeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(children: [
        InkWell(
          onTap: () {
            provider.ChangeTheme(ThemeMode.light);
          },
          child: Row(
            children: [
              Text(
                AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: provider.mode==ThemeMode.light
                        ? themeData.color1
                        : Colors.black54),
              ),
              Spacer(),
              provider.mode==ThemeMode.light
                  ? Icon(Icons.done,
                  color: provider.mode==ThemeMode.light
                      ? themeData.color1
                      : Colors.black54)
                  : SizedBox.shrink(),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            provider.ChangeTheme(ThemeMode.dark);
          },
          child: Row(
            children: [
              Text(AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.mode==ThemeMode.dark
                          ? themeData.color1
                          : Colors.black54)),
              Spacer(),
              provider.mode==ThemeMode.dark
                  ? Icon(
                Icons.done,
                color: provider.mode==ThemeMode.dark
                    ? themeData.color1
                    : Colors.black54,
              )
                  : SizedBox.shrink(),
            ],
          ),
        )
      ]),
    );
  }
}
