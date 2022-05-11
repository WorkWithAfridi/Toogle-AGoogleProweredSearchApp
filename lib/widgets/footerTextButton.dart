import 'package:flutter/material.dart';

import '../constants/colors.dart';

class FooterTextButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  const FooterTextButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed(),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          title,
          style: TextStyle(
            color: primaryColor.withOpacity(.5),
          ),
        ),
      ),
    );
  }
}
