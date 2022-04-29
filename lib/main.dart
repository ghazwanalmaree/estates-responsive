import 'package:estates_with_responsive/constants.dart';
import 'package:estates_with_responsive/widgets/main/main_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real estates',
      theme: ThemeData.dark().copyWith(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBgColor,
          canvasColor: kBgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(
                bodyColor: Colors.white,
              )
              .copyWith(
                  bodyText1: TextStyle(color: kBodyTextColor),
                  bodyText2: TextStyle(color: kBodyTextColor))),
      home: MainSection(),
    );
  }
}
