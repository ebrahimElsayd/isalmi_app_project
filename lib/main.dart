import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/home.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/sura_details.dart';

import 'package:provider/provider.dart';

import 'hadeth_details.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      locale: Locale(provider.languageCode),
      themeMode: provider.themeMode,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        HadethDetails.routeName: (context) => HadethDetails(),
        SuraDetails.routeName: (context) => SuraDetails(),
      },
    );
  }
}
