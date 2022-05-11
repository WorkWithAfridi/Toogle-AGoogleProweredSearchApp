import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: () {},
              color: searchColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Text(
                  'Toogle Search',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            MaterialButton(
              onPressed: () {},
              color: searchColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Text(
                  "I'm Feeling Lucky",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
