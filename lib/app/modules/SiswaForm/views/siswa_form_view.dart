import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
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
      body: Obx(
        () => Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  'FORM TAMBAH SISWA',
                  style: TextStyle(fontSize: 20),
                ),
                alignment: Alignment.center,
              ),
              Container(
                width: Get.width - 60,
                child: controller.pathFile.value == ""
                    ? Icon(
                        Icons.account_box,
                        size: 80,
                      )
                    : Image.file(
                        File(controller.pathFile.value),
                        fit: BoxFit.cover,
                      ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => controller.onTapPicker('galeri'),
                    icon: Icon(
                      Icons.image,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: 8),
                  IconButton(
                    onPressed: () => controller.onTapPicker('camera'),
                    icon: Icon(
                      Icons.add_a_photo,
                      size: 40,
                    ),
                  ),
                ],
              ),
              TextField(
                controller: controller.txtNisn,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "NISN",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.txtNama,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Nama",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.txtKelas,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Kelas",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controller.txtTanggalLahir,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Tanggal Lahir",
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: Get.context!,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );

                  if (pickedDate != null) {
                    controller.txtTanggalLahir.text =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                  }
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  controller.addData();
                },
                child: const Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
