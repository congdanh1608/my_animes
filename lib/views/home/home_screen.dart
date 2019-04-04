import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_animes/modems/Media.dart';
import 'package:my_animes/views/home/home_screen_view.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_animes/local.dart' show YOUR_PERSONAL_ACCESS_TOKEN;

class HomeScreen extends StatefulWidget {
  @protected
  List<DataPageMedium> items = new List<DataPageMedium>(10);

  @override
  State<StatefulWidget> createState() {
    _generateFakeData();

    final HttpLink httpLink = HttpLink(
      uri: 'https://anilist.co/graphiql/',
//      uri: 'https://graphql.anilist.co',
    );

    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer $YOUR_PERSONAL_ACCESS_TOKEN',
    );

//    final Link link = authLink.concat(httpLink);

    final ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: httpLink,
        cache: NormalizedInMemoryCache(
          dataIdFromObject: typenameDataIdFromObject,
        ),
      ),
    );

    return HomeScreenView(client);
  }

  _generateFakeData() {
    var coverImage = DataPageMediaCoverimage(medium: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx16498-4SqgyJC1CK5w.jpg");
    var title = DataPageMediaTitle(english: "Test");
    for (int i = 0; i < 10; i++) {
      items[i] = DataPageMedium(
          coverImage: coverImage,
          title: title,
          description:
              "lls, even taller than the biggest of titans.<br><br>\r\nFlash forward to the present and the city has not seen a titan in over 100 years. Teenage boy Eren and his foster sister Mikasa witness something horrific as the city walls are destroyed by a colossa",
          episodes: 25);
    }
  }
}

abstract class HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<GraphQLClient> client;

  HomeScreenState(this.client);

  @protected
  bool isExit = false;

  @protected
  Future<bool> onWillPop() async {
    if (isExit) {
      exit(0);
    } else {
      Fluttertoast.showToast(
        msg: 'Press one more time to exit app.',
        toastLength: Toast.LENGTH_SHORT,
      );
      isExit = true;
      await Future.delayed(Duration(seconds: 3), () {
        isExit = false;
      });
    }
    return true;
  }
}
