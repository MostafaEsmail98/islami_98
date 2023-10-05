import 'package:flutter/material.dart';
import 'package:islami/ahadethModel.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/themeData.dart';
import 'package:provider/provider.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName = "AdadethDetails";

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as ahadethModel;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(pro.mode == ThemeMode.light
                  ? "asset/image/background.png"
                  : "asset/image/bg.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title,
                style: pro.mode == ThemeMode.light
                    ? Theme.of(context).textTheme.bodyLarge
                    : Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Color(0xFFFACC1D))),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 100,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: themeData.color1, width: 3)),
              child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Text(args.content[0],
                        textAlign: TextAlign.center,
                        style: pro.mode == ThemeMode.light
                            ? Theme.of(context).textTheme.bodyLarge
                            : Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Color(0xFFFACC1D))),
                  )),
            ),
          )),
    );
  }
}
