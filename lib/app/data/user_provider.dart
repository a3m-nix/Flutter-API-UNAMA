import 'package:flutter_proyek_nim/app/data/base_api_provider.dart';
import 'package:get/get.dart';

class UserProvider extends BaseApiProvider {
  Future<Response<dynamic>> login(var data) async {
    return await post('$apiUrl/login', data, headers: headers);
  }
}
