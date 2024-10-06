import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.light,
                  style: GoogleFonts.elMessiri(
                      fontSize: 25,
                      color: provider.themeMode == ThemeMode.light
                          ? Color(0xFFB7935F)
                          : Colors.black),
                ),
                provider.themeMode == ThemeMode.light
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
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.dark,
                  style: GoogleFonts.elMessiri(
                      fontSize: 25,
                      color: provider.themeMode == ThemeMode.dark
                          ? Color(0xFFB7935F)
                          : Colors.black),
                ),
                provider.themeMode == ThemeMode.light
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
