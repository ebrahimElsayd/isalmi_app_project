import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/tabs/ahadeth_tab.dart';
import 'package:islami_app/home/tabs/quran_tab.dart';
import 'package:islami_app/home/tabs/radio_tab.dart';
import 'package:islami_app/home/tabs/sebha_tab.dart';
import 'package:islami_app/home/tabs/settings_tab.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.getBackgroundImagePath(),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_name,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_quran.png")),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_ahadeth.png")),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              ),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingsTab()
  ];
}
