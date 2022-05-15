import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tooglesearchapp/constants/colors.dart';

import '../Layout/mobileScreenLayout.dart';
import '../Layout/responsiveLayoutScreen.dart';
import '../Layout/webScreenLayout.dart';
import '../screens/searchScreen.dart';

class SearchHeader extends StatefulWidget {
  final String searchQuery;
  final String start;
  const SearchHeader({Key? key, required this.searchQuery, required this.start})
      : super(key: key);

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.text = widget.searchQuery;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Tooogle',
              style: TextStyle(
                  fontFamily: 'Aerial',
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            width: 35,
          ),
          Container(
            width: size.width * .60,
            height: 45,
            decoration: BoxDecoration(
              color: searchColor,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: searchColor),
            ),
            padding: const EdgeInsets.only(left: 15),
            child: TextField(
              controller: textEditingController,
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
              style: const TextStyle(fontSize: 16),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        textEditingController.text = '';
                      },
                      icon: const Icon(
                        Icons.close,
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
                    SvgPicture.asset('assets/images/mic-icon.svg'),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.search,
                      color: Colors.pink,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
