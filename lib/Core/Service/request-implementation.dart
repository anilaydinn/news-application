import 'dart:async';
import 'dart:io';

import './request-abstract.dart';
import '../Utils/custom-exceptions.dart';
import 'package:http/http.dart' as http;

class GetRequest implements Requests {
  @override
  Future call({required String url, body}) async {
    var response;
    try {
      response = await http.get(Uri.parse(url));

      response = await _response(response);
      return response;
    } on TimeoutException {
    } on SocketException {
      throw SocketException("Socket exception caught");
    }
  }

  static dynamic _response(http.Response response) {
    print(response.statusCode);
    switch (response.statusCode) {
      case 200:
        return response;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 500:
        throw BadRequestException("");
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode: ${response.statusCode}');
    }
  }
}
