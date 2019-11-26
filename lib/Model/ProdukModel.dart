import 'dart:convert';

class ProdukModel{
  int idproduk;
  String nama_produk;
  int stok;
  String harga;
  String shortdeskripsi;
  String longdeskripsi;
  String berat;
  int aktif;
  int idtoko;
  int idkategori_produk;
  int idproduct_group;
  String gambar1;
  String gambar2;
  String gambar3;

  ProdukModel({
    this.idproduk=0,
    this.nama_produk,
    this.stok,
    this.harga,
    this.shortdeskripsi,
    this.longdeskripsi,
    this.berat,
    this.aktif=0,
    this.idtoko=0,
    this.idkategori_produk=0,
    this.idproduct_group=0,
    this.gambar1,
    this.gambar2,
    this.gambar3
  });

  factory ProdukModel.fromJson(Map<String, dynamic>  map){
    return ProdukModel(
      idproduk: map["idproduk"],
      nama_produk: map["nama_produk"],
      stok: map["stok"],
      harga: map["harga"],
      shortdeskripsi: map["shortdeskripsi"],
      longdeskripsi: map["longdeskripsi"],
      berat: map["berat"],
      aktif: map["aktif"],
      idtoko: map["idtoko"],
      idkategori_produk: map["idkategori_produk"],
      idproduct_group: map["idproduct_group"],
      gambar1: map["gambar1"],
      gambar2: map["gambar2"],
      gambar3: map["gambar3"],
    );
  }

  Map<String, dynamic>toJson(){
    return{
      "idproduk": idproduk,
      "nama_produk": nama_produk,
      "stok": stok,
      "harga": harga,
      "shortdeskripsi": shortdeskripsi,
      "longdeskripsi": longdeskripsi,
      "berat": berat,
      "aktif": aktif,
      "idtoko": idtoko,
      "idkategori_produk": idkategori_produk,
      "idproduct_group": idproduct_group,
      "gambar1": gambar1,
      "gambar2": gambar2,
      "gambar3": gambar3
    };
  }

  @override
  String toString(){
    return 'ProdukModel{idproduk: $idproduk, nama_produk: $nama_produk, stok: $stok, harga: $harga, shortdeskripsi: $shortdeskripsi, longdeskripsi: $longdeskripsi, berat: $berat, aktif: $aktif, idtoko: $idtoko, idkategori_produk: $idkategori_produk, idproduct_group: $idproduct_group, gambar1: $gambar1, gambar2: $gambar2, gambar3: $gambar3}';
  }
}

List<ProdukModel> produkFromJson(String jsonData){
  final data = json.decode(jsonData);
  return List<ProdukModel>.from(data.map((item)=>ProdukModel.fromJson(item)));
}

String produkToJson(ProdukModel data){
  final jsonData = data.toJson();
  return json.encode(jsonData);
}