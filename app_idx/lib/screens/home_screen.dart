import 'package:app_idx/screens/arduinoUno_screen.dart';
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4018608794.
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const name = 'HomeScreen';
  String userName;
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1050022159.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1213486258.
  List<String> items = ['Arduino Uno', 'Arduino Mega', 'Arduino Nano'];
  List<String> itemsSubtitles = ['\$19.999', '\$46.080', '\$9.500'];
  HomeScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                title: Text(items[index]),
                subtitle: Text(itemsSubtitles[index]),
                leading: const Image(image: AssetImage('app_idx/assets/arduino.png')),
                onTap:() {
                  if(items[index] == 'Arduino Uno')
                  {
                    context.pushNamed(ArduinoUno.name);
                  }
                },
                  )
              );

            }));
            }
  }