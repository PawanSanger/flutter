import 'package:flutter/material.dart';
import 'package:my_app/Widgets/weatherCard.dart';
import 'package:my_app/models/weather_model.dart';
import 'package:my_app/services/weather_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final WeatherServices _weatherServices = WeatherServices();
  final TextEditingController controller = TextEditingController();

  bool isLoading = false;
  Weather? _weather;

  void getWeather() async {
    setState(() {
      isLoading = true;
    });

    try {
      final weather = await _weatherServices.fetchWeather(controller.text);

      setState(() {
        _weather = weather;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Error to fetching weather")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient:
              _weather != null &&
                  _weather!.description.toLowerCase().contains("rain")
              ? const LinearGradient(
                  colors: [Colors.grey, Colors.blueGrey],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : const LinearGradient(
                  colors: [Color.fromARGB(255, 30, 196, 171), Colors.yellow],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width:200,
                    child:TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                        hintText: "Enter city",
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: getWeather,
                      child: const Text("Get Weather"),
                    ),
                    if (_weather != null) 
                    WeatherCard(weather: _weather!)
                  ],
                ),
        ),
      ),
    );
  }
}
