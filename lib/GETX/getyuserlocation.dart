import 'package:flutter/material.dart';
import 'package:flutter_application_1/GLOBALS/securityfile.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Getyuserlocation extends StatefulWidget {
  const Getyuserlocation({Key? key}) : super(key: key);

  @override
  State<Getyuserlocation> createState() => _GetyuserlocationState();
}

class _GetyuserlocationState extends State<Getyuserlocation> {

  @override
  void initState()  {
    super.initState();
       getCurrentLocation().then((value) {
                  setState(() {
                    lat = '${value.latitude}';
                    long = '${value.longitude}';
                  });
                  liveLocation();
                });
     }
  dynamic lat;
  dynamic long;
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location Services Not Enabled');
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location Permission are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location Permission are denied Forever');
    }
    return await Geolocator.getCurrentPosition();
  }

  liveLocation() {
    LocationSettings locationSettings = const LocationSettings(
        accuracy: LocationAccuracy.high, distanceFilter: 100);
    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position position) {
      lat = position.latitude.toDouble();
      long = position.longitude.toDouble();
    });
  }

  Future<void> openMap(lat, long) async {
    String googleURL = 'https://www.google.com/maps/search/?api=1&query=$lat,$long';
    await canLaunchUrlString(googleURL) ? await launchUrlString(googleURL) : throw 'Could not Launch $googleURL';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
            
              },
              child: const Text('Get Location')),
          ElevatedButton(
              onPressed: () {
                openMap(lat, long);
              },
              child: const Text('Open Google Map')),
          Text(lat ?? 'lat'),
          Text(long ?? 'long'),
          SizedBox(
            height: 400,
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: sourceLocation, zoom: 14.5),
            ),
          ),
        ],
      ),
    );
  }
}
