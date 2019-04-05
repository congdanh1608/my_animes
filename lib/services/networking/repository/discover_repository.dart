import 'package:my_animes/models/DiscoverMovie.dart';
import 'package:my_animes/services/networking/provider/discover_provider.dart';

class DiscoverRepository {
  DiscoverProvider _provider = DiscoverProvider();

  Future<DiscoverMovie> getDiscoverMovie() {
    return _provider.getDiscoverMovie();
  }
}
