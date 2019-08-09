import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      setLatitude(position.latitude);
      setLongitude(position.longitude);
    } catch (e) {
      print(e);
    }
  }

  void setLatitude(n) {
    latitude = n;
  }

  void setLongitude(n) {
    longitude = n;
  }
}
