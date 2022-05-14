import 'package:flutter/material.dart';
import 'package:tooglesearchapp/constants/colors.dart';
import 'package:tooglesearchapp/widgets/footerTextButton.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: footerColor,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                "Bangladesh",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 20,
                color: Colors.grey,
                width: 1,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Baily Road, Dhaka",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                " - ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                " Based on your places (Home) - Update location",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 0,
          thickness: 1,
        ),
        Container(
          color: footerColor,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Wrap(
            children: [
              FooterTextButton(title: "Help", onPressed: () {}),
              SizedBox(
                width: 10,
              ),
              FooterTextButton(title: "Send feedback", onPressed: () {}),
              SizedBox(
                width: 10,
              ),
              FooterTextButton(title: "Privacy", onPressed: () {}),
              SizedBox(
                width: 10,
              ),
              FooterTextButton(title: "Terms", onPressed: () {}),
            ],
          ),
        )
      ],
    );
  }
}
