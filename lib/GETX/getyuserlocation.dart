import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';
import "package:get/get.dart";
import 'package:google_place/google_place.dart';

class Getyuserlocation extends StatefulWidget {
  const Getyuserlocation({Key? key}) : super(key: key);

  @override
  State<Getyuserlocation> createState() => _GetyuserlocationState();
}

class _GetyuserlocationState extends State<Getyuserlocation> {
  final PredictionPlaceController getkar = Get.put(PredictionPlaceController());
  @override
  void initState() {
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
    String googleURL =
        'https://www.google.com/maps/search/?api=1&query=$lat,$long';
    await canLaunchUrlString(googleURL)
        ? await launchUrlString(googleURL)
        : throw 'Could not Launch $googleURL';
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
                openMap(lat, long);
              },
              child: const Text('Open Google Map')),
          /*       Text(lat ?? 'lat'),
          Text(long ?? 'long'), */
          /* SizedBox(
            height: 200,
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: LatLng(lat ?? 19, long ?? 12), zoom: 14.5),
            ),
          ), */
          TextField(
            onChanged: (value) {
              getkar.getSearchResults(
                  searchKeyword: value, location: LatLon(lat, long));
            },
          )
        ],
      ),
    );
  }
}

class PredictionPlaceController extends GetxController {
  RxList<AutocompletePrediction> predictions = <AutocompletePrediction>[].obs;
/*   final CurrentDevicePositionController _currentDevicePositionController =
      Get.find<CurrentDevicePositionController>(); */

  // late GooglePlace _googlePlace;
  GooglePlace googlePlace =
      GooglePlace("AIzaSyB6QHBuXiX-wiJSNxa6DeP_gGkz0lfxqyo");

  // DESCRIPTION : Get Search result from googlePlaces api
  // PARAMETERS required are
  // searchKeyword: place name text
  // location: location around which position to search the places
  void getSearchResults(
      {required String searchKeyword, required LatLon location}) async {
    if (searchKeyword != "") {
      var result = await googlePlace.autocomplete.get(
        searchKeyword,
        location: location,
        /*  radius: _currentDevicePositionController.circleRadius.value.toInt(), */
      );
      print("-----------------------------------------${result!.predictions}");

      if (result != null && result.predictions != null) {
        predictions.value = result.predictions!;
      }
    }
  }
}
