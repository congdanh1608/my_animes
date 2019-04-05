import 'package:dio/dio.dart';
import 'package:my_animes/utils/network_utils.dart';

class ErrorModel {
  //These fields for server error
  String statusMessage;
  int statusCode;
  bool success = true;

  //This field will be helpful when we need to store information about any error that happend in connection process.
  String errorProcess;

  ErrorModel.withError(errorValue) {
    if (errorValue is DioError && errorValue.response != null) {
      Map<String, dynamic> json = errorValue.response.data;
      statusMessage = json['status_message'];
      statusCode = json['status_code'];
      success = json['success'];
    }
    this.errorProcess = NetworkUtils.handleError(errorValue);
  }

  ErrorModel.fromJson(Map<String, dynamic> json) {
    statusMessage = json['status_message'];
    statusCode = json['status_code'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_message'] = this.statusMessage;
    data['status_code'] = this.statusCode;
    data['success'] = this.success;
    return data;
  }
}
