import 'package:flutter/material.dart';
import 'package:your_project_name/widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Hier füge das Wetter-Widget basierend auf dem Figma-Design ein
            WeatherCard(
              cityName:
                  'Berlin', // Beispielstadt, du kannst dies dynamisch machen
              temperature:
                  22, // Beispieltemperatur, du kannst dies dynamisch machen
              weatherType:
                  'Sunny', // Beispiel-Wettertyp, du kannst dies dynamisch machen
              iconPath:
                  'assets/images/icons/sun.png', // Beispiel-Icon-Pfad, aktualisiere dies entsprechend deinem Projekt
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Hier implementiere die Navigation zum Bildschirm für die Wettervorhersage
                Navigator.pushNamed(context, '/forecast');
              },
              child: Text('7 Day Forecast'),
            ),
            ElevatedButton(
              onPressed: () {
                // Hier implementiere die Navigation zum Bildschirm für die Stadt-Auswahl
                Navigator.pushNamed(context, '/city');
              },
              child: Text('Change City'),
            ),
          ],
        ),
      ),
    );
  }
}
