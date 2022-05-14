import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tooglesearchapp/constants/colors.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        top: 25,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Text(
            'Toogle',
            style: TextStyle(
                fontFamily: 'Aerial',
                fontSize: 25,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
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
            padding: EdgeInsets.only(left: 15),
            child: TextFormField(
              style: TextStyle(fontSize: 16),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.close,
                      color: Colors.grey,
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
