import 'package:flutter/material.dart';
import 'package:tooglesearchapp/constants/colors.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text(
          'Toogle offered in: ',
          style: TextStyle(
            color: primaryColor.withOpacity(.7),
          ),
        ),
        SizedBox(width: 5),
        LanguageText(title: 'বাংলা'),
        SizedBox(width: 5),
        LanguageText(title: '中文(简体)'),
        SizedBox(width: 5),
        LanguageText(title: 'తెలుగు'),
      ],
    );
  }
}

class LanguageText extends StatelessWidget {
  final String title;
  const LanguageText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: TextStyle(color: Colors.pinkAccent),
      ),
    );
  }
}
