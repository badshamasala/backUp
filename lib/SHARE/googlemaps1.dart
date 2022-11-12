import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Googlemaps1 extends StatefulWidget {
  const Googlemaps1({Key? key}) : super(key: key);

  @override
  State<Googlemaps1> createState() => _Googlemaps1State();
}

class _Googlemaps1State extends State<Googlemaps1> {
  var sourceLocation = LatLng(19.0715252, 72.8692906);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        height: 200,
        child: GoogleMap(
              initialCameraPosition: CameraPosition( 
                target: sourceLocation, zoom: 14.5),
        ),
      ),
    );
  }
}
