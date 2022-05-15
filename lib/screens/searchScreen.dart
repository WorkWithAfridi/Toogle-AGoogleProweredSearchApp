import 'package:flutter/material.dart';
import 'package:tooglesearchapp/services/api_service.dart';

import '../widgets/searchFooter.dart';
import '../widgets/searchHeader.dart';
import '../widgets/searchResultCOmponent.dart';
import '../widgets/searchTab.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen({Key? key, required this.searchQuery, required this.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchHeader(
                start: start,
                searchQuery: searchQuery,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: SearchTabs(),
              ),
              const Divider(
                height: 0,
                thickness: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.maxFinite,
                child: FutureBuilder(
                  future: ApiService()
                      .fetchData(queryTerm: searchQuery, start: start),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "About ${snapshot.data!["searchInformation"]["formattedTotalResults"]} results (${snapshot.data!["searchInformation"]["formattedSearchTime"]} seconds)",
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              children: const [
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
                          const SizedBox(
                            height: 15,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data!["items"].length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 10),
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
                              }),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    if (int.parse(start) > 0) {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) => SearchScreen(
                                            searchQuery: searchQuery,
                                            start: (int.parse(start) - 10)
                                                .toString(),
                                          ),
                                        ),
                                      );
                                    }
                                  },
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
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => SearchScreen(
                                          searchQuery: searchQuery,
                                          start: (int.parse(start) + 10)
                                              .toString(),
                                        ),
                                      ),
                                    );
                                  },
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
                          const SearchFooter(),
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
