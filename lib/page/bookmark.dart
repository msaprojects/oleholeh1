import 'package:flutter/material.dart';
import 'package:oleholeh1/Model/TokoModel.dart';
import 'package:oleholeh1/util/ApiService.dart';                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         

class Bookmark extends StatefulWidget {
  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: ApiService().getToko(),
        builder: (BuildContext context, AsyncSnapshot<List<TokoModel>> snapshot){
          if(snapshot.hasError){
            return Center(
              child: Text(
                "Ada Masalah : ${snapshot.error.toString()}"
              ),
            );
          }else if(snapshot.connectionState == ConnectionState.done){
            List<TokoModel> toko = snapshot.data;
            print(toko);
            return _buildListView(toko);
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
  Widget _buildListView(List<TokoModel> tokos){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListView.builder(
        itemBuilder: (context, index){
          TokoModel toko = tokos[index];
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[                  
                    Image.network(toko.gambar),
                    Text(
                      toko.nama,
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(toko.alamat),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          onPressed: (){},
                          child: Icon(Icons.bookmark_border, color: Colors.red),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text("Kunjungi", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: tokos.length,
      ),
    );
  }
}