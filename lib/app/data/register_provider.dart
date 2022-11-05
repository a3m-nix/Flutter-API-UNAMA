import 'package:flutter_proyek_nim/app/data/base_api_provider.dart';
import 'package:get/get.dart';

class RegisterProvider extends BaseApiProvider {
  Future<Response<dynamic>> postData(var data) async {
    return await post('$apiUrl/register?delay=2', data, headers: headers);
  }
}
