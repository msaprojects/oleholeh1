import 'package:http/http.dart' show Client;
import 'package:oleholeh1/Model/ProdukModel.dart';
import 'package:oleholeh1/Model/TokoModel.dart';

class ApiService{
  final String baseUrl = "http://103.31.46.23:6565";
  Client client = Client();

  Future<List<TokoModel>> getToko() async{
    final response = await client.get("$baseUrl/toko");
    if  (response.statusCode==200){
      return tokoFromJson(response.body);
    }else{
      return null;
    }
  }

  Future<List<ProdukModel>> getProduk() async{
    final response = await client.get("$baseUrl/produk");
    if  (response.statusCode==200){
      return produkFromJson(response.body);
    }else{
      return null;
    }
  }

}