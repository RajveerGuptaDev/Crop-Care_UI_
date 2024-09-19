import 'package:flutter/material.dart';


class SoilPage extends StatefulWidget {
  @override
  State<SoilPage> createState() => _SoilPageState();
}

class _SoilPageState extends State<SoilPage> {
  final List<Map<String, String>> soilData = [
    {'Parameter': 'Sensor ', 'Value': 'Highly effective'},
    {'Parameter': 'Earthworm Counts', 'Value': 'Organic way'},
    {'Parameter': 'Infiltration Test', 'Value': 'Cheap '},
    {'Parameter': 'Slake Test', 'Value': 'Cheap'},
    {'Parameter': 'Teabag Method', 'Value': 'easy to make'},
    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soil Health Testing Method'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: soilData.length,
        itemBuilder: (context, index) {
          final data = soilData[index];
          return Card(
            elevation: 5,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['Parameter']!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    data['Value']!,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}