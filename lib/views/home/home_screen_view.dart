import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_animes/modems/Media.dart';
import 'package:my_animes/views/home/home_screen.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:my_animes/services/graphql/graphql_operation/queries/fetchMedias.dart' as queries;

class HomeScreenView extends HomeScreenState {
  HomeScreenView(ValueNotifier<GraphQLClient> client) : super(client);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: CacheProvider(
        child: WillPopScope(
          onWillPop: onWillPop,
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Home',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _TitleBar(
                      title: "Popular This Session",
                      color: Colors.black38,
                    ),
                    _PopularThisSession(
                      items: widget.items,
                    ),
                    _TitleBar(
                      title: "Highly Anticipated Next Season ",
                      color: Colors.black38,
                    ),
                    _HighlyAnticipated(
                      items: widget.items,
                    ),
                    _TitleBar(
                      title: "Highest Rated All Time",
                      color: Colors.black38,
                    ),
                    _PopularThisSession(
                      items: widget.items,
                    ),
                    _TitleBar(
                      title: "All Time Popular",
                      color: Colors.black38,
                    ),
                    _PopularThisSession(
                      items: widget.items,
                    ),
                    Query(
                      options: QueryOptions(
                        document: queries.getMedia,
                        variables: <String, int>{
                          'id': 16498,
                        },
                      ),
                      builder: (QueryResult result) {
                        if (result.loading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (result.hasErrors) {
                          return Text('Error ${result.errors}');
                        }

                        if (result.data == null && result.errors == null) {
                          return const Text('Both data and errors are null');
                        }

//                        final dynamic media = result.data['data'];
//                        print(media);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TitleBar extends StatelessWidget {
  final String title;
  final Color color;

  const _TitleBar({Key key, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.body1,
        ),
      ),
    );
  }
}

class _PopularThisSession extends StatelessWidget {
  final List<DataPageMedium> items;

  const _PopularThisSession({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return _buildColumnItem(items[i], context);
        },
      ),
    );
  }

  _buildColumnItem(DataPageMedium item, BuildContext context) {
    return Container(
        height: 200,
        width: 140,
        child: Padding(
          padding: EdgeInsets.only(right: 6.0),
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: 200,
                width: 140,
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'https://mocah.org/uploads/posts/4576922-children-dog-animals-shiba-inu-running.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    width: double.infinity,
                    color: Colors.black38,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        item.title.english,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.body1,
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}

class _HighlyAnticipated extends StatelessWidget {
  final List<DataPageMedium> items;

  const _HighlyAnticipated({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return _buildColumnItem(items[i], context);
        },
      ),
    );
  }

  _buildColumnItem(DataPageMedium item, BuildContext context) {
    return Container(
        height: 200,
        width: 140,
        child: Padding(
          padding: EdgeInsets.only(right: 6.0),
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: 200,
                width: 140,
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'https://mocah.org/uploads/posts/4576922-children-dog-animals-shiba-inu-running.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    width: double.infinity,
                    color: Colors.black38,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        item.title.english,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.body1,
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
