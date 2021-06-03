import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ViewLocation extends StatefulWidget {
  @override
  _ViewMap createState() => _ViewMap();
}
class _ViewMap extends State<ViewLocation>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google maps'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(22.5448131,88.3403691),
          zoom: 15,
      ),
      )
    );
  }

}
