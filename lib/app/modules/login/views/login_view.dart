import 'package:flutter/material.dart';
import 'package:flutter_proyek_nim/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                "Login Sebagai Operator",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
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
              onPressed: () => controller.onTapButtonLogin(),
              child: Text(
                'L O G I N',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text('Belum punya akun ?'),
                TextButton(
                  child: const Text(
                    'Daftar disini',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.REGISTER);
                  },
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
