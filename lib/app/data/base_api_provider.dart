import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class BaseApiProvider extends GetConnect {
  final String apiUrl = 'http://belajar-api.unama.ac.id/api';
  final Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer ${SpUtil.getString("token")}'
  };
}
