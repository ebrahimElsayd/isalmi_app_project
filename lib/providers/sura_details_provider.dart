import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier {
  List<String> verses = [];

  void readSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");

    List<String> suraLines = sura.trim().split("\n");
    verses = suraLines;
    print(verses);
    notifyListeners();
  }
}
