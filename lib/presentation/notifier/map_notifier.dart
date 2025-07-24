import 'package:autocyr/data/helpers/permissions.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapNotifier extends ChangeNotifier {

  MapNotifier(){
    getInitialPosition(true);
  }

  bool _loading = false;
  bool _current = false;
  Position? _position;
  LatLng? _center;
  BitmapDescriptor? customIcon;
  BitmapDescriptor? storeIcon;

  bool get loading => _loading;
  bool get current => _current;
  Position? get position => _position;
  LatLng? get center => _center;
  BitmapDescriptor? get getCustomIcon => customIcon;
  BitmapDescriptor? get getStoreIcon => storeIcon;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setCurrent(bool value) {
    _current = value;
    notifyListeners();
  }

  setPosition(Position value) {
    _position = value;
    notifyListeners();
  }

  setCenter(LatLng value) {
    _center = value;
    notifyListeners();
  }

  void setCustomIcons() async {
    customIcon = await BitmapDescriptor.asset(
      const ImageConfiguration(devicePixelRatio: 2.0),
      'assets/markers/location.png',
      width: 35,
      height: 35
    );
    notifyListeners();
  }

  void setStoreIcons() async {
    storeIcon = await BitmapDescriptor.asset(
      const ImageConfiguration(devicePixelRatio: 2.0),
      'assets/markers/place.png',
      width: 35,
      height: 35
    );
    notifyListeners();
  }

  getLocation() {
    final LatLng center = LatLng(
      position!.latitude,
      position!.longitude
    );
    return center;
  }

  getInitialPosition(bool place) async {
    setLoading(true);
    Position position = await Permissions().getPosition();
    final LatLng center = LatLng(
      position.latitude,
      position.longitude
    );
    setCurrent(true);
    setPosition(position);
    setCenter(center);
    setCustomIcons();
    setStoreIcons();
    setLoading(false);
  }

  getUserPosition() async {
    Position position = await Permissions().getPosition();
    final LatLng center = LatLng(
      position.latitude,
      position.longitude
    );
    setCurrent(true);
    setPosition(position);
    setCenter(center);
    setCustomIcons();
    setStoreIcons();
  }

}