import 'package:flutter/material.dart';

import '../widgets/searchFooter.dart';
import '../widgets/searchHeader.dart';
import '../widgets/searchTab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchHeader(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: SearchTabs(),
            ),
            Divider(
              height: 0,
              thickness: 1,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Prev",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.pink,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SearchFooter(),
          ],
        ),
      ),
    );
  }
}
