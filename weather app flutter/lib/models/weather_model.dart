class Weather {
  final String cityname;
  final double temperature;
  final String description;
  final int humidity;
  final double windspeed;
  final int sunrise;
  final int sunset;


Weather(//constroctor
  {
  required this.cityname,
  required this.temperature,
  required this.description,
  required this.humidity,
  required this.windspeed,
  required this.sunrise,
  required this.sunset,}
);

  factory Weather.fromJson(Map<String, dynamic> json){//json formatting
    return Weather(cityname: json["name"], temperature: json["main"]["temp"] -273.15, description: json["weather"][0]["description"],
      humidity: json["main"]["humidity"],
      windspeed: (json["wind"]["speed"]).toDouble(),
      sunrise: json["sys"]["sunrise"],
      sunset: json["sys"]["sunset"],);

  }

}