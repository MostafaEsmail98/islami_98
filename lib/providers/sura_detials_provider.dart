import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SureDetialsProvider extends ChangeNotifier{
  List<String> line = [];
  loadFile(int index) async {
    String file = await rootBundle.loadString("asset/file/${index + 1}.txt");
    List<String> lines = file.split("\n");
    line = lines;
    notifyListeners();
  }


}