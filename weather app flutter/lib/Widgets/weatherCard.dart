//after formatting.
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:my_app/models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;

  const WeatherCard({super.key, required this.weather, });

  String formatTime(int timestamp) {
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat("hh:mm a").format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         
          Lottie.asset(
            weather.description.toLowerCase().contains("rain")
                ? "assets/rain.json"
                : weather.description.toLowerCase().contains("clear")
                ? "assets/sunny.json"
                : "assets/cloudy.json",
            height: 150,
            width: 150,
          ),

          const SizedBox(height: 10),

         
          Text(
            weather.cityname,
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          const SizedBox(height: 10),

          Text(
            "${weather.temperature.toStringAsFixed(1)} °C",
            style: Theme.of(
              context,
            ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          Text(
            weather.description,
            style:TextStyle(fontWeight:FontWeight.bold,backgroundColor: Colors.amber),),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Humidity: ${weather.humidity}%"),
              Text("Wind: ${weather.windspeed} m/s"),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(Icons.wb_sunny_outlined, color: Colors.orange),
                  const Text("Sunrise"),
                  Text(formatTime(weather.sunrise)),
                ],
              ),
              Column(
                children: [
                  const Icon(
                    Icons.nights_stay_outlined,
                    color: Colors.deepPurple,
                  ),
                  const Text("Sunset"),
                  Text(formatTime(weather.sunset)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
