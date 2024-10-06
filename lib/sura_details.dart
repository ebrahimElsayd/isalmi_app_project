import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/providers/sura_details_provider.dart';
import 'package:islami_app/sura_model.dart';

import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "SuraDetails";

  SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;

    // if (verses.isEmpty) {
    //   readSuraFile(suraModel.index);
    // }
    //
    var provider = Provider.of<MyProvider>(context);
    return ChangeNotifierProvider<SuraDetailsProvider>(
      create: (context) => SuraDetailsProvider()..readSuraFile(suraModel.index),
      builder: (context, child) {
        var suraProvider = Provider.of<SuraDetailsProvider>(context);

        // if (suraProvider.verses.isEmpty) {
        //   suraProvider.readSuraFile(suraModel.index);
        // }

        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    provider.getBackgroundImagePath(),
                  ),
                  fit: BoxFit.cover)),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                suraModel.name,
              ),
            ),
            body: suraProvider.verses.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        thickness: 1,
                        endIndent: 50,
                        indent: 50,
                        color: Color(0xffB7935F),
                      ),
                      itemBuilder: (context, index) {
                        return Text(
                            "${suraProvider.verses[index]} (${index + 1})",
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            style: Theme.of(context).textTheme.bodyMedium
                            // GoogleFonts.elMessiri(
                            //     color: Colors.white,
                            //     fontSize: 20,
                            //     letterSpacing: 1),
                            );
                      },
                      itemCount: suraProvider.verses.length,
                    ),
                  ),
          ),
        );
      },
    );
  }
}
