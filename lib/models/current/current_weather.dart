import 'dart:convert';

class CurrentWeather {
  double? temperature;
  double? windspeed;
  int? winddirection;
  int? weathercode;
  int? isDay;
  String? time;

  CurrentWeather({
    this.temperature,
    this.windspeed,
    this.winddirection,
    this.weathercode,
    this.isDay,
    this.time,
  });

  factory CurrentWeather.fromLatitude345Longitude5875GenerationtimeMs0049948692321777344UtcOffsetSeconds10800TimezoneAmericaArgentinaBuenosAiresTimezoneAbbreviation03Elevation270CurrentWeatherTemperature199Windspeed173Winddirection179Weathercode2IsDay1Time20230929T1345(
      Map<String, dynamic> data) {
    return CurrentWeather(
      temperature: (data['temperature'] as num?)?.toDouble(),
      windspeed: (data['windspeed'] as num?)?.toDouble(),
      winddirection: data['winddirection'] as int?,
      weathercode: data['weathercode'] as int?,
      isDay: data['is_day'] as int?,
      time: data['time'] as String?,
    );
  }

  Map<String, dynamic>
      toLatitude345Longitude5875GenerationtimeMs0049948692321777344UtcOffsetSeconds10800TimezoneAmericaArgentinaBuenosAiresTimezoneAbbreviation03Elevation270CurrentWeatherTemperature199Windspeed173Winddirection179Weathercode2IsDay1Time20230929T1345() {
    return {
      'temperature': temperature,
      'windspeed': windspeed,
      'winddirection': winddirection,
      'weathercode': weathercode,
      'is_day': isDay,
      'time': time,
    };
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CurrentWeather].
  factory CurrentWeather.fromJson(String data) {
    return CurrentWeather
        .fromLatitude345Longitude5875GenerationtimeMs0049948692321777344UtcOffsetSeconds10800TimezoneAmericaArgentinaBuenosAiresTimezoneAbbreviation03Elevation270CurrentWeatherTemperature199Windspeed173Winddirection179Weathercode2IsDay1Time20230929T1345(
            json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CurrentWeather] to a JSON string.
  String toJson() => json.encode(
      toLatitude345Longitude5875GenerationtimeMs0049948692321777344UtcOffsetSeconds10800TimezoneAmericaArgentinaBuenosAiresTimezoneAbbreviation03Elevation270CurrentWeatherTemperature199Windspeed173Winddirection179Weathercode2IsDay1Time20230929T1345());
}
