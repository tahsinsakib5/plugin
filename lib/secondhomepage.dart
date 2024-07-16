
import 'package:flutter/material.dart';
import 'package:plugin/data.dart';
import 'package:plugin/homepage.dart';

class SeconHomePage extends StatefulWidget {
  const SeconHomePage({super.key});

  @override
  State<SeconHomePage> createState() => _SeconHomePageState();
}


  String? selectedDivision;
  String? selectedDistrict;
  List<String>? districts = [];
  

class _SeconHomePageState extends State<SeconHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           DropdownButton<String>(
              hint: Text('Select Division'),
              value: selectedDivision,
              items: divisions.map((Division division) {
                return DropdownMenuItem<String>(
                  value: division.name,
                  child: Text(division.name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDivision = value;
                  districts = divisions
                      .firstWhere((division) => division.name == value)
                      .districts;
                  selectedDistrict = null;
                });
              },),
              //  if (districts != null && districts!.isNotEmpty)
              DropdownButton<String>(
                hint: Text('Select District'),
                value: selectedDistrict,
                items: districts!.map((String district) {
                  return DropdownMenuItem<String>(
                    value: district,
                    child: Text(district),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedDistrict = value;
                  });
                },
              ),
        ],
      ),
    );
  }
}