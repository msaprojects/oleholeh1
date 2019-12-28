import 'dart:convert';

class TokoModel{
  int id;
  String nama;
  int aktif;
  String alamat;
  String latitude;
  String longitude;
  String gambar;

  TokoModel({
    this.id=0,
    this.nama,
    this.aktif,
    this.alamat,
    this.latitude,
    this.longitude,
    this.gambar
  });

  factory TokoModel.fromJson(Map<String, dynamic> map){
    return TokoModel(
      id: map["idtoko"],
      nama: map["nama_toko"],
      aktif: map["aktif"],
      alamat: map["alamat"],
      latitude: map["latitude"],
      longitude: map["longitude"],
      gambar: map["gambar"],
    );
  }
  
  Map<String, dynamic>toJson(){
    return {
      "idtoko": id, 
      "nama_toko": nama, 
      "aktif": aktif, 
      "alamat": alamat, 
      "latitude": latitude, 
      "longitude": longitude, 
      "gambar": gambar
    };
  }

  @override
  String toString(){
    return '{idtoko: $id, nama_toko: $nama, aktif: $aktif, alamat: $alamat, latitude: $latitude, longitude: $longitude, gamber: $gambar}';
  }
}

List<TokoModel> tokoFromJson(String jsonData){
  final data = json.decode(jsonData);
  return List<TokoModel>.from(data.map((item)=>TokoModel.fromJson(item)));
}

String tokoToJson(TokoModel data){
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
