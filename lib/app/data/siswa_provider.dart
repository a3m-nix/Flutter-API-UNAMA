import 'dart:io';
import 'package:flutter_proyek_nim/app/data/base_api_provider.dart';
import 'package:flutter_proyek_nim/app/data/siswa_model.dart';
import 'package:get/get.dart';

class SiswaProvider extends BaseApiProvider {
  Future<Response> postData(SiswaModel siswaModel) async {
    final FormData formData = FormData({
      'foto': MultipartFile(File(siswaModel.foto.toString()).readAsBytesSync(),
          filename: siswaModel.foto.toString().split('/').last),
      'nisn': siswaModel.nisn,
      'nama': siswaModel.nama,
      'kelas': siswaModel.kelas,
      'tanggal_lahir': siswaModel.tanggalLahir,
    });

    var response = await post('$apiUrl/siswa', formData, headers: headers);
    return response;
  }
}
