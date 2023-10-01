import 'package:flutter/material.dart';
import 'package:new_islami_app/home/quran/sura_details/sura_details_arguments.dart';
import 'package:new_islami_app/home/quran/sura_details/sura_details_screen.dart';

class SuraTitleWidget extends StatelessWidget {
  String title;
  int index;

  SuraTitleWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routName,
            arguments: SuraArguments(name: title, index: index));
      },
      child: Container(
        padding: EdgeInsets.all(4),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
