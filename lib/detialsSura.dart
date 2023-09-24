import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/suraModel.dart';
import 'package:islami/themeData.dart';

class DeSura extends StatefulWidget {
  static const String routeName = "Desura";

  @override
  State<DeSura> createState() => _DeSuraState();
}

class _DeSuraState extends State<DeSura> {
  List<String> line = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (line.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/image/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
          appBar: AppBar(
            title:
                Text(args.name, style: Theme.of(context).textTheme.bodyLarge),
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
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Text(textAlign: TextAlign.center, line[index]);
                    },
                    separatorBuilder: (context, index) => Divider(
                        thickness: 1,
                        color: themeData.color1,
                        indent: 15,
                        endIndent: 15),
                    itemCount: line.length),
              ),
            ),
          )),
    );
  }

  loadFile(int index) async {
    String file = await rootBundle.loadString("asset/file/${index + 1}.txt");
    List<String> lines = file.split("\n");
    print(lines);
    line = lines;
    setState(() {});
  }
}
