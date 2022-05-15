import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tooglesearchapp/constants/colors.dart';

import '../screens/searchScreen.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final finalSize = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Toogle',
            style: TextStyle(
              fontFamily: 'Arial',
              color: primaryColor,
              fontSize: finalSize.height * .08,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: finalSize.width * .7,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: searchBorderColor),
                  borderRadius: BorderRadius.circular(35)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset(
                    'assets/images/search-icon.svg',
                    color: searchBorderColor,
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onSubmitted: (query) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(
                              searchQuery: query,
                              start: "0",
                            ),
                          ),
                        );
                      },
                      decoration: const InputDecoration.collapsed(
                          hintText: "Search", border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    'assets/images/mic-icon.svg',
                    color: Colors.pink,
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
