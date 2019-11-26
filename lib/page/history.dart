import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toko di sekitar anda"),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(target: LatLng(-7.2983645, 112.7629941), zoom: 14.0,
        ),
      ),
    );
  }
}