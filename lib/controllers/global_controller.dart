import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  final RxBool _isLoading = true.obs;
  final RxDouble _latitud = 0.0.obs;
  final RxDouble _longitud = 0.0.obs;

  RxBool checkLoading() => _isLoading;
  RxDouble getLatitud() => _latitud;
  RxDouble getLongitud() => _longitud;

  @override
  void onInit() {
    if (_isLoading.isTrue) getLocation();
    super.onInit();
  }

  getLocation() async {
    // chequeando si la geolocalización esta activada
    bool isServiceEnabled;
    LocationPermission locationPermission;
    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      return Future.error('La Geolocalización no esta habilitada.');
    }
    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error('La Geolocalización esta denegada para siempre');
    } else if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error('La Geolocalización ha sido denegada');
      }
    }
    // tomando la geolocalziación del usuario
    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) {
      _latitud.value = value.latitude;
      _longitud.value = value.longitude;
      _isLoading.value = false;
    });
  }
}
