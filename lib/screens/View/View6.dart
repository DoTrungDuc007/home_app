import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class View6 extends StatefulWidget {
  @override
  _ViewMap createState() => _ViewMap();
}
class _ViewMap extends State<View6>{
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
          Marker(
            markerId: MarkerId('id-1'),
            position: LatLng(21.014527427856574, 105.77569661290678),
            infoWindow: InfoWindow(
              title: 'The Manor Mỹ Đình',
              snippet: 'Khu đô thị Mỹ Đình',
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
            target: LatLng(21.014527427856574, 105.77569661290678),
            zoom: 15,
          ),
        )
    );
  }

}
