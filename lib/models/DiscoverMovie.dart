import 'package:my_animes/models/BaseModel.dart';
import 'package:my_animes/models/MovieTV.dart';

class DiscoverMovie extends BaseModel {
  List<MovieTV> results;

  DiscoverMovie.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    if (json['results'] != null) {
      results = new List<MovieTV>();
      (json['results'] as List).forEach((v) {
        results.add(new MovieTV.fromJson(v));
      });
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = super.toJson();
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }

  DiscoverMovie.withError(errorValue, stacktrace) : super.withError(errorValue, stacktrace) {
    this.results = List();
  }
}
