import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_form_controller.dart';

class ProfilFormView extends GetView<ProfilFormController> {
  const ProfilFormView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfilFormView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfilFormView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
