import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class View2 extends StatefulWidget {
  @override
  _ViewMap createState() => _ViewMap();
}
class _ViewMap extends State<View2>{
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
          Marker(
            markerId: MarkerId('id-1'),
            position: LatLng(21.01633910816015, 105.78404685959863),
            infoWindow: InfoWindow(
              title: 'Keangnam Ha Noi',
              snippet: '72 Phạm Hùng',
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
            target: LatLng(21.01633910816015, 105.78404685959863),
            zoom: 15,
          ),
        )
    );
  }

}
