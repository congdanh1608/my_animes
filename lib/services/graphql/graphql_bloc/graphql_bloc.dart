import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:my_animes/local.dart' show PERSONAL_ACCESS_TOKEN;

class GraphqlBloc {
  static final HttpLink _httpLink = HttpLink(
//    uri: 'https://graphql.anilist.co',
    uri: 'https://anilist.co/graphiql',
  );

  static final AuthLink _authLink = AuthLink(
    getToken: () async => 'Bearer $PERSONAL_ACCESS_TOKEN',
  );

  static final Link _link = _authLink.concat(_httpLink);

  final GraphQLClient client = GraphQLClient(
    link: _link,
    cache: NormalizedInMemoryCache(
      dataIdFromObject: typenameDataIdFromObject,
    ),
  );
}
