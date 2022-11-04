import 'package:flutter/material.dart';
import 'package:flutter_proyek_nim/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthButton = Get.width - 130;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Utama'),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: Get.height / 5),
                  child: Text(
                    'Aplikasi Tagihan SPP',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text(
                    'SD Usaha Mandiri',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  width: widthButton,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 30),
                  child:
                      Text('Selamat Datang User, ${SpUtil.getString("name")}'),
                ),
                Container(
                  width: widthButton,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      //route profil
                      Get.toNamed(Routes.PROFIL_FORM);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Ubah Profil'),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: widthButton,
                  height: 60,
                  margin: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      //route menampilkan list data siswa
                      Get.toNamed(Routes.SISWA_LIST);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.switch_account),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Data Siswa'),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: widthButton,
                  height: 60,
                  margin: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      SpUtil.clear();
                      Get.offAllNamed('/login');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.logout),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Logout'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
