import 'package:flutter/material.dart';
import 'package:flutter_weather_api/controllers/global_controller.dart';
import 'package:geocoding_resolver/geocoding_resolver.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';


class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  
  
  GeoCoder geoCoder = GeoCoder();
  String city = '';
   String day =""; 
 
  

  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  void initState() {
    getAddress(globalController.getLatitud().value,
        globalController.getLongitud().value);
    super.initState();
  }

  getAddress(lat, long) async {
    initializeDateFormatting('es_AR', null).then((_) => Intl.defaultLocale ='es_AR' );
    day= DateFormat.EEEE('es').format(DateTime.now()).toUpperCase() + ", "
     + DateFormat.yMd().format(DateTime.now());

    Address address = await geoCoder.getAddressFromLatLng(
      latitude: lat,
      longitude: long,
    );
    setState(() {
      city = address.addressDetails.city;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.topLeft,
          child: Text(
            city,
            style: const TextStyle(fontSize: 35, height: 2),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          alignment: Alignment.topLeft,
          child: Text(
            day,
            style:
                TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.5),
          ),
        ),
      ],
    );
  }
}
