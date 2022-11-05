class SiswaModel {
  String? nisn;
  String? nama;
  String? kelas;
  String? foto;
  String? tanggalLahir;
  String? updatedAt;
  String? createdAt;
  int? id;
  String? fotoUrl;

  SiswaModel(
      {this.nisn,
      this.nama,
      this.kelas,
      this.foto,
      this.tanggalLahir,
      this.updatedAt,
      this.createdAt,
      this.id,
      this.fotoUrl});

  SiswaModel.fromJson(Map<String, dynamic> json) {
    nisn = json['nisn'];
    nama = json['nama'];
    kelas = json['kelas'];
    foto = json['foto'];
    tanggalLahir = json['tanggal_lahir'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    fotoUrl = json['foto_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nisn'] = this.nisn;
    data['nama'] = this.nama;
    data['kelas'] = this.kelas;
    data['foto'] = this.foto;
    data['tanggal_lahir'] = this.tanggalLahir;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['foto_url'] = this.fotoUrl;
    return data;
  }
}
