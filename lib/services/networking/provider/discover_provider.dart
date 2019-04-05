import 'package:dio/dio.dart';
import 'package:my_animes/models/DiscoverMovie.dart';
import 'package:my_animes/services/networking/provider/base_provider.dart';

class DiscoverProvider extends BaseProvider {
  final String _endpoint = "/discover/movie";

  Future<DiscoverMovie> getDiscoverMovie() async {
    try {
      Response response = await dio.get(_endpoint);
      return DiscoverMovie.fromJson(response.data);
    } catch (error, stacktrace) {
      return DiscoverMovie.withError(error, stacktrace);
    }
  }
}
