
import 'package:flutter/material.dart';
import 'package:islami/ahadethModel.dart';
import 'package:islami/themeData.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName = "AdadethDetails";


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ahadethModel;

    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/image/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
          appBar: AppBar(
            title:
            Text(args.title, style: Theme.of(context).textTheme.bodyLarge),
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
                child:Container(child: Text(args.content[0],textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodySmall),)
              ),
            ),
          )),
    );
  }
}
