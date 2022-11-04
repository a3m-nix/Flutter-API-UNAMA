import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/siswa_form_controller.dart';

class SiswaFormView extends GetView<SiswaFormController> {
  const SiswaFormView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SiswaFormView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SiswaFormView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
