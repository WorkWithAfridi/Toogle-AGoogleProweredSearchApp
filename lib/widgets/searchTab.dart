import 'package:flutter/material.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            SearchTab(
              icon: Icons.search,
              isActive: true,
              text: "All",
            ),
            SizedBox(
              width: 20,
            ),
            SearchTab(
              icon: Icons.map,
              text: "Maps",
            ),
            SizedBox(
              width: 20,
            ),
            SearchTab(
              icon: Icons.image,
              text: "Image",
            ),
            SizedBox(
              width: 20,
            ),
            SearchTab(
              icon: Icons.article,
              text: "News",
            ),
            SizedBox(
              width: 20,
            ),
            SearchTab(
              icon: Icons.shop,
              text: "Shopping",
            ),
            SizedBox(
              width: 20,
            ),
            SearchTab(
              icon: Icons.more_vert,
              text: "More",
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class SearchTab extends StatelessWidget {
  final IconData icon;
  final bool? isActive;
  final String text;

  const SearchTab(
      {Key? key, required this.icon, this.isActive = false, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isActive! ? Colors.pink : Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: isActive! ? Colors.pink : Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 7,
        ),
        isActive! ? Container(
          height: 3,
          width: 100,
          color: Colors.pink,
        ) : SizedBox.shrink()
      ],
    );
  }
}
