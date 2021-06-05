import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class View8 extends StatefulWidget {
  @override
  _ViewMap createState() => _ViewMap();
}
class _ViewMap extends State<View8>{
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
          Marker(
            markerId: MarkerId('id-1'),
            position: LatLng(21.029483567919712, 105.77648003220655),
            infoWindow: InfoWindow(
              title: 'Dolphil Plaza Trần Bình',
              snippet: '6 Nguyễn Hoàng',
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
            target: LatLng(21.029483567919712, 105.77648003220655),
            zoom: 15,
          ),
        )
    );
  }

}
