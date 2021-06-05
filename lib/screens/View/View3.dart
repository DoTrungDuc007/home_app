import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class View3 extends StatefulWidget {
  @override
  _ViewMap createState() => _ViewMap();
}
class _ViewMap extends State<View3>{
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
          Marker(
            markerId: MarkerId('id-1'),
            position: LatLng(21.025132006124377, 105.84343903499104),
            infoWindow: InfoWindow(
              title: 'Pacific Place Lý Thường Kiệt',
              snippet: '83 Lý Thường Kiệt',
            ),
          )
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Google maps'),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: _markers,
          initialCameraPosition: CameraPosition(
            target: LatLng(21.025132006124377, 105.84343903499104),
            zoom: 15,
          ),
        )
    );
  }

}
