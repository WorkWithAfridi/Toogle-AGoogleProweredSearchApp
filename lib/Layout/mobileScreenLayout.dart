import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tooglesearchapp/constants/colors.dart';
import 'package:tooglesearchapp/widgets/searchBar.dart';

import '../widgets/mobileFooter.dart';
import '../widgets/searchButtons.dart';
import '../widgets/translationButtons.dart';
import '../widgets/webFooter.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final finalSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          title: SizedBox(
            width: finalSize.width * .3,
            child: const DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: Colors.pinkAccent,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.pink,
                tabs: [
                  Tab(
                    text: "ALL",
                  ),
                  Tab(
                    text: "IMAGES",
                  ),
                ],
              ),
            ),
          ),
          actions: [
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
              MobileFooter()
            ],
          ),
        ));
  }
}
