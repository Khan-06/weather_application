import 'package:flutter/material.dart';

import 'package:location/location.dart';

class LocationProvider with ChangeNotifier {
  final Location _locationService = Location();

  Future<LocationData?> getCurrentLocation () async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await _locationService.serviceEnabled();
    if(!serviceEnabled){
      serviceEnabled = await _locationService.requestService();
      if(!serviceEnabled){
        return null;
      }
    }

    permissionGranted = await _locationService.hasPermission();
    if(permissionGranted == PermissionStatus.denied){
      permissionGranted = await _locationService.requestPermission();
      if(permissionGranted != PermissionStatus.granted){
        return null;
      }
    }
    return _locationService.getLocation();
  }
}