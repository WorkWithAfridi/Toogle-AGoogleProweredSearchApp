import 'package:flutter/material.dart';
import 'package:tooglesearchapp/constants/colors.dart';
import 'package:tooglesearchapp/widgets/footerTextButton.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final finalSize = MediaQuery.of(context).size;
    return Container(
      height: finalSize.height * .1,
      color: footerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                'Bangladesh',
                style: TextStyle(
                  color: primaryColor.withOpacity(.7),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  FooterTextButton(title: 'Advertising', onPressed: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  FooterTextButton(title: 'Business', onPressed: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  FooterTextButton(title: 'How Search Works', onPressed: () {}),
                ],
              ),
              Row(
                children: [
                  FooterTextButton(title: 'Privicy', onPressed: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  FooterTextButton(title: 'Terms', onPressed: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  FooterTextButton(title: 'Settings', onPressed: () {}),
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
