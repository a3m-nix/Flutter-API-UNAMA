import 'package:get/get.dart';

class UserProvider extends GetConnect {
  Future<Response<dynamic>> login(var data) async {
    Map<String, String> headers = {
      'Accept': 'application/json',
    };
    return await post('http://belajar-api.unama.ac.id/api/login', data,
        headers: headers);
  }
}
