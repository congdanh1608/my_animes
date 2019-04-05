import 'package:my_animes/models/DiscoverMovie.dart';
import 'package:my_animes/services/networking/provider/discover_provider.dart';
import 'package:rxdart/rxdart.dart';

class DiscoverBloc {
  final DiscoverProvider _repository = DiscoverProvider();
  final BehaviorSubject<DiscoverMovie> _subject = BehaviorSubject<DiscoverMovie>();

  getDiscoverMovie() async {
    DiscoverMovie discoverMovie = await _repository.getDiscoverMovie();
    _subject.sink.add(discoverMovie);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<DiscoverMovie> get subject {
    return _subject;
  }
}

final discoverBloc = DiscoverBloc();
