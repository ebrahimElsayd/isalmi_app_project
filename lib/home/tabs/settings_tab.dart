import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/sheets/language_sheet.dart';

import 'package:provider/provider.dart';

import '../../sheets/theme_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.w400),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .7,
                    child: LanguageBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Color(0xFFB7935F))),
              child: Text(
                pro.languageCode == "en" ? "English" : "Arabic",
                style: GoogleFonts.elMessiri(
                    fontSize: 25, fontWeight: FontWeight.w100),
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "Theme",
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.w400),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .7,
                    child: ThemeBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Color(0xFFB7935F))),
              child: Text(
                pro.themeMode == ThemeMode.light ? "Light" : "Dark",
                style: GoogleFonts.elMessiri(
                    fontSize: 25, fontWeight: FontWeight.w100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
