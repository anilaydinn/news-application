import 'package:get/get_connect/http/src/response/response.dart';
import 'package:news_application/Core/Service/api-abstract.dart';
import 'package:news_application/Core/Service/request-abstract.dart';
import 'package:news_application/Core/constant.dart';

class API extends BaseAPI {
  @override
  Future<Response> getNewsList(Requests request) async {
    return await request.call(
        url:
            "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=turkey&api-key=" +
                API_KEY);
  }
}
