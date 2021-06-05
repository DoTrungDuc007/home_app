import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class View9 extends StatefulWidget {
  @override
  _ViewMap createState() => _ViewMap();
}
class _ViewMap extends State<View9>{
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
          Marker(
            markerId: MarkerId('id-1'),
            position: LatLng(20.9636637860337, 105.77602656871537),
            infoWindow: InfoWindow(
              title: 'Hyundai Hill State',
              snippet: 'khu VIIA, Đường Tô Diệu',
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
            target: LatLng(20.9636637860337, 105.77602656871537),
            zoom: 15,
          ),
        )
    );
  }

}
