import 'dart:convert';

import 'current_weather.dart';

class Current {
  double? latitude;
  double? longitude;
  double? generationtimeMs;
  int? utcOffsetSeconds;
  String? timezone;
  String? timezoneAbbreviation;
  int? elevation;
  CurrentWeather? currentWeather;

  Current({
    this.latitude,
    this.longitude,
    this.generationtimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    this.currentWeather,
  });

  factory Current.fromLatitude345Longitude5875GenerationtimeMs0049948692321777344UtcOffsetSeconds10800TimezoneAmericaArgentinaBuenosAiresTimezoneAbbreviation03Elevation270CurrentWeatherTemperature199Windspeed173Winddirection179Weathercode2IsDay1Time20230929T1345(
      Map<String, dynamic> data) {
    return Current(
      latitude: (data['latitude'] as num?)?.toDouble(),
      longitude: (data['longitude'] as num?)?.toDouble(),
      generationtimeMs: (data['generationtime_ms'] as num?)?.toDouble(),
      utcOffsetSeconds: data['utc_offset_seconds'] as int?,
      timezone: data['timezone'] as String?,
      timezoneAbbreviation: data['timezone_abbreviation'] as String?,
      elevation: data['elevation'] as int?,
      currentWeather: data['current_weather'] == null
          ? null
          : CurrentWeather
              .fromLatitude345Longitude5875GenerationtimeMs0049948692321777344UtcOffsetSeconds10800TimezoneAmericaArgentinaBuenosAiresTimezoneAbbreviation03Elevation270CurrentWeatherTemperature199Windspeed173Winddirection179Weathercode2IsDay1Time20230929T1345(
                  data['current_weather'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic>
      toLatitude345Longitude5875GenerationtimeMs0049948692321777344UtcOffsetSeconds10800TimezoneAmericaArgentinaBuenosAiresTimezoneAbbreviation03Elevation270CurrentWeatherTemperature199Windspeed173Winddirection179Weathercode2IsDay1Time20230929T1345() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'generationtime_ms': generationtimeMs,
      'utc_offset_seconds': utcOffsetSeconds,
      'timezone': timezone,
      'timezone_abbreviation': timezoneAbbreviation,
      'elevation': elevation,
      'current_weather': currentWeather
          ?.toLatitude345Longitude5875GenerationtimeMs0049948692321777344UtcOffsetSeconds10800TimezoneAmericaArgentinaBuenosAiresTimezoneAbbreviation03Elevation270CurrentWeatherTemperature199Windspeed173Winddirection179Weathercode2IsDay1Time20230929T1345(),
    };
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Current].
  factory Current.fromJson(String data) {
    return Current
        .fromLatitude345Longitude5875GenerationtimeMs0049948692321777344UtcOffsetSeconds10800TimezoneAmericaArgentinaBuenosAiresTimezoneAbbreviation03Elevation270CurrentWeatherTemperature199Windspeed173Winddirection179Weathercode2IsDay1Time20230929T1345(
            json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Current] to a JSON string.
  String toJson() => json.encode(
      toLatitude345Longitude5875GenerationtimeMs0049948692321777344UtcOffsetSeconds10800TimezoneAmericaArgentinaBuenosAiresTimezoneAbbreviation03Elevation270CurrentWeatherTemperature199Windspeed173Winddirection179Weathercode2IsDay1Time20230929T1345());
}
