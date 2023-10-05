import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/providers/sura_detials_provider.dart';
import 'package:islami/suraModel.dart';
import 'package:islami/themeData.dart';
import 'package:provider/provider.dart';

class DeSura extends StatefulWidget {
  static const String routeName = "Desura";

  @override
  State<DeSura> createState() => _DeSuraState();
}

class _DeSuraState extends State<DeSura> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    return ChangeNotifierProvider(
      create: (context) => SureDetialsProvider()..loadFile(args.index),
      builder: (context, child) {
        var pro = Provider.of<MyProvider>(context);
        var proSura = Provider.of<SureDetialsProvider>(context);
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(pro.mode == ThemeMode.light
                      ? "asset/image/background.png"
                      : "asset/image/bg.png"),
                  fit: BoxFit.cover)),
          child: Scaffold(
              appBar: AppBar(
                title: Text(args.name,
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
                      borderSide:
                          BorderSide(color: themeData.color1, width: 3)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Text(
                            textAlign: TextAlign.center,
                            proSura.line[index],
                            style: pro.mode == ThemeMode.light
                                ? Theme.of(context).textTheme.bodyLarge
                                : Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: Color(0xFFFACC1D)),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(
                            thickness: 1,
                            color: themeData.color1,
                            indent: 15,
                            endIndent: 15),
                        itemCount: proSura.line.length),
                  ),
                ),
              )),
        );
      },
    );
  }
}
