import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_animes/modems/media.dart';
import 'package:my_animes/services/graphql/graphql_bloc/graphql_bloc.dart';
import 'package:my_animes/services/graphql/graphql_operation/queries/fetchMedias.dart' as queries;
import 'package:rxdart/subjects.dart';

class MediaBloc extends GraphqlBloc {
  final BehaviorSubject<Entity> _animesSubject = BehaviorSubject<Entity>();

  Stream<Entity> get animeStream => _animesSubject.stream;

  final BehaviorSubject<int> _updateVariablesAnimeSink = BehaviorSubject<int>();

  Sink<int> get updateVariablesAnimeSink => _updateVariablesAnimeSink;

  MediaBloc() {
    _queryAnimes();
//    _updateVariablesAnimeSink.listen(
//      (int page) => _queryAnimes(page: page),
//    );
  }

  /*Future<void> _queryAnimes({int page = 0, int perPage = 10}) async {
    _animesSubject.add(null);
    final WatchQueryOptions _options = WatchQueryOptions(
      document: queries.getListAnime,
      variables: <String, dynamic>{
        'page': page,
        'perPage': perPage,
      },
      fetchResults: true,
    );

    final QueryResult _queryResult = await client.query(_options);

    if (_queryResult.hasErrors) {
      _animesSubject.addError(_queryResult.errors);
      return;
    }

    final dynamic anime = _queryResult.data['data'] as List<dynamic>;
    _animesSubject.add(anime);
  }*/

  Future<void> _queryAnimes() async {
    _animesSubject.add(null);
    final WatchQueryOptions _options = WatchQueryOptions(
      document: queries.getMedia,
      variables: <String, dynamic>{
        'id': 16498,
      },
      fetchResults: true,
    );

    final QueryResult _queryResult = await client.query(_options);

    if (_queryResult.hasErrors) {
      _animesSubject.addError(_queryResult.errors);
      return;
    }

    final dynamic anime = _queryResult.data['data'];
    _animesSubject.add(anime);
  }
}
