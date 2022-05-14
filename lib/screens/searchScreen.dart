import 'package:flutter/material.dart';
import 'package:tooglesearchapp/services/api_service.dart';

import '../widgets/searchFooter.dart';
import '../widgets/searchHeader.dart';
import '../widgets/searchResultCOmponent.dart';
import '../widgets/searchTab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                height: 15,
              ),
              Container(
                width: double.maxFinite,
                child: FutureBuilder(
                  future: ApiService()
                      .fetchData(queryTerm: "queryTerm", start: "0"),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "About ${snapshot.data!["searchInformation"]["formattedTotalResults"]} results (${snapshot.data!["searchInformation"]["formattedSearchTime"]} seconds)",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Showing results for ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  'Linkedin',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data!["items"].length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: SearchResultComponent(
                                    description: snapshot.data!["items"][index]
                                        ["snippet"],
                                    link: snapshot.data!["items"][index]
                                        ["formattedUrl"],
                                    linkToGO: snapshot.data!["items"][index]
                                        ["link"],
                                    text: snapshot.data!["items"][index]
                                        ["title"],
                                  ),
                                );
                              })
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
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
                      child: const Text(
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
              const SizedBox(
                height: 30,
              ),
              SearchFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
