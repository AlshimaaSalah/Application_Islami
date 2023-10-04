import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_islami_app/home/quran/sura_details/sura_details_arguments.dart';
// import 'package:flutter/services.dart';

class SuraDetailsScreen extends StatefulWidget {
  // SuraDetailsScreen({Key? key}) : super(key: key);

  static const String routName = "Sura_Details";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArguments? arg =
        ModalRoute.of(context)?.settings.arguments as SuraArguments;
    if (verses.isEmpty) readFile(arg.index);
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
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Card(
                color: Colors.transparent,
                elevation: 0,
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 44),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: ListView.separated(
                  itemBuilder: (_, index) {
                    return Text(
                      "${verses[index]}[${index + 1}]",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                    );
                  },
                  itemCount: verses.length,
                  separatorBuilder: (_, index) {
                    return Container(
                      color: Theme.of(context).primaryColor,
                      margin:
                          EdgeInsets.symmetric(horizontal: 52, vertical: 10),
                      height: 1,
                    );
                  },
                ),
              ),
      ),
    );
  }

  void readFile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString("assets/fiels/${fileIndex + 1}.txt");
    List<String> lines = fileContent.trim().split("\n");
    setState(() {
      verses = lines;
    });
  }
}
