import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double marginTextField = 10;
    OutlineInputBorder borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: FlutterLogo(
                size: 80,
              ),
            ),
            Container(
              margin: EdgeInsets.all(marginTextField),
              child: Text(
                "Daftar Akun Operator",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(marginTextField),
              child: TextField(
                controller: controller.txtName,
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: borderStyle,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(marginTextField),
              child: TextField(
                controller: controller.txtEmail,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: borderStyle,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(marginTextField),
              child: TextField(
                controller: controller.txtPassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: borderStyle,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(250, 50),
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              onPressed: () => controller.onTapButtonSimpan(),
              child: Text(
                'Daftar Sekarang',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text('Sudah punya akun ?'),
                TextButton(
                  child: const Text(
                    'Login aja',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () => Get.toNamed(Routes.LOGIN),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
