import 'package:flutter/material.dart';
import 'package:new_islami_app/home/quran/sura_details/sura_details_arguments.dart';
// import 'package:flutter/services.dart';

class SuraDetailsScreen extends StatelessWidget {
  // SuraDetailsScreen({Key? key}) : super(key: key);

  static const String routName = "Sura_Details";

  @override
  Widget build(BuildContext context) {
    SuraArguments? arg =
        ModalRoute.of(context)?.settings.arguments as SuraArguments;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/main_background.png",
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arg.name),
        ),
      ),
    );
  }
}
