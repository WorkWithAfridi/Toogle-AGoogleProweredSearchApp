import 'package:flutter/material.dart';
import 'package:tooglesearchapp/widgets/footerTextButton.dart';

import '../constants/colors.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final finalSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: finalSize.height * .08,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,

        children: [
          FooterTextButton(title: 'About', onPressed: () {}),
          FooterTextButton(title: 'Advertising', onPressed: () {}),
          FooterTextButton(title: 'Business', onPressed: () {}),
          FooterTextButton(title: 'How Search Works', onPressed: () {}),
          FooterTextButton(title: 'Privacy', onPressed: () {}),
          FooterTextButton(title: 'Terms', onPressed: () {}),
          FooterTextButton(title: 'Settings', onPressed: () {}),
        ],
      ),
    );
  }
}
