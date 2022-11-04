import 'package:get/get.dart';

class RegisterProvider extends GetConnect {
  Future<Response<dynamic>> postData(var data) async {
    Map<String, String> headers = {
      'Accept': 'application/json',
    };
    return await post(
        'http://belajar-api.unama.ac.id/api/register?delay=5', data,
        headers: headers);
  }
}
