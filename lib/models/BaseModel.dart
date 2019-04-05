import 'package:my_animes/models/ErrorModel.dart';

class BaseModel extends ErrorModel {
  int page;
  int totalPages;
  int totalResults;

  BaseModel.withError(errorValue, stacktrace) : super.withError(errorValue) {
    print(stacktrace);
  }

  BaseModel.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    page = json['page'];
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = super.toJson();
    data['page'] = this.page;
    data['total_pages'] = this.totalPages;
    data['total_results'] = this.totalResults;
    return data;
  }
}
