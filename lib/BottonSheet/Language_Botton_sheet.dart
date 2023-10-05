import 'package:flutter/material.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/themeData.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(children: [
        InkWell(
          onTap: () {
            provider.ChangeLanguage("en");
          },
          child: Row(
            children: [
              Text(
                "English",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: provider.language == "en"
                        ? Theme.of(context).colorScheme.primary
                        : provider.mode == ThemeMode.light
                            ? Colors.black54
                            : Theme.of(context).colorScheme.onPrimary),
              ),
              Spacer(),
              provider.language == "en"
                  ? Icon(Icons.done,
                      color: provider.language == "en"
                          ? themeData.color1
                          : Colors.black54)
                  : SizedBox.shrink(),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            provider.ChangeLanguage("ar");
          },
          child: Row(
            children: [
              Text("العربية",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.language == "ar"
                          ? Theme.of(context).colorScheme.primary
                          : provider.mode == ThemeMode.light
                          ? Colors.black54
                          : Theme.of(context).colorScheme.onPrimary)),
              Spacer(),
              provider.language == "ar"
                  ? Icon(
                      Icons.done,
                      color: provider.language == "ar"
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
