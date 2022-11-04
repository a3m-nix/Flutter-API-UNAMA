import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/siswa_list_controller.dart';

class SiswaListView extends GetView<SiswaListController> {
  const SiswaListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SiswaListView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SiswaListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
