import 'package:news_application/Core/Service/request-abstract.dart';
import 'package:stacked_services/stacked_services.dart';

abstract class BaseAPI {
  Future<Response> getNewsList(Requests request);
}
