import 'package:flutter/material.dart';
import 'package:tooglesearchapp/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String text;
  final String description;
  final String linkToGO;
  // final Function()? onTap;
  const SearchResultComponent(
      {Key? key,
      required this.link,
      required this.text,
      required this.description,
      required this.linkToGO})
      : super(key: key);

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderline = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.link,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(widget.linkToGO.toString()))) ;
            },
            onHover: (hovering) {
              setState(() {
                _showUnderline = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pink,
                    decoration: _showUnderline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          widget.description,
          style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(.8)),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
