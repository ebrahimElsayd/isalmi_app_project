import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: GoogleFonts.elMessiri(
                      fontSize: 25,
                      color: provider.languageCode == "en"
                          ? Color(0xFFB7935F)
                          : Colors.black),
                ),
                provider.languageCode == "en"
                    ? Icon(
                        Icons.done,
                        size: 30,
                        color: Color(0xFFB7935F),
                      )
                    : SizedBox()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: GoogleFonts.elMessiri(
                      fontSize: 25,
                      color: provider.languageCode != "en"
                          ? Color(0xFFB7935F)
                          : Colors.black),
                ),
                provider.languageCode != "ar"
                    ? SizedBox()
                    : Icon(
                        Icons.done,
                        size: 30,
                        color: Color(0xFFB7935F),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
