import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tooglesearchapp/constants/colors.dart';
import 'package:tooglesearchapp/widgets/searchBar.dart';

import '../widgets/searchButtons.dart';
import '../widgets/translationButtons.dart';
import '../widgets/webFooter.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final finalSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'About',
                  style: TextStyle(
                    color: primaryColor.withOpacity(.8),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Store',
                  style: TextStyle(
                    color: primaryColor.withOpacity(.8),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Tmail',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Images',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/more-apps.svg',
                semanticsLabel: 'Menu logo',
                color: primaryColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0)
                  .copyWith(right: 10),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.pink,
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SearchBar(),
                    SizedBox(
                      height: 20,
                    ),
                    SearchButtons(),
                    SizedBox(
                      height: 20,
                    ),
                    TranslationButtons(),
                  ],
                ),
              ),
              WebFooter()
            ],
          ),
        ));
  }
}
