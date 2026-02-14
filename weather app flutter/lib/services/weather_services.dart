//internet se data la rahi hai
import 'package:my_app/models/weather_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';//json decode
class WeatherServices {
  final String apikey="de0ea46a066a9ae61cbbe4eadf4afae1";
  Future<Weather> fetchWeather(String cityname)async{
    final url=Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$cityname&appid=$apikey");

    final response= await http.get(url);

    if (response.statusCode==200){
      return Weather.fromJson(json.decode(response.body));
    }
    else{
      throw Exception("Failed To Load Data");
    }
  }
}