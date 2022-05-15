import 'package:flutter/material.dart';
import 'package:tooglesearchapp/Layout/mobileScreenLayout.dart';
import 'package:tooglesearchapp/Layout/responsiveLayoutScreen.dart';
import 'package:tooglesearchapp/Layout/webScreenLayout.dart';
import 'package:tooglesearchapp/constants/colors.dart';

void main() {
  runApp(const ToogleSearch());
}

class ToogleSearch extends StatelessWidget {
  const ToogleSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToogleSearch',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme()
            .copyWith(backgroundColor: backgroundColor, elevation: 0),
      ),
      home: const ResponsiveLayoutScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
