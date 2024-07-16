// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// // class Division {
// //   final String name;
// //   final List<String> districts;

// //   Division(this.name, this.districts);
// // }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DivisionDistrictSelector(),
//     );
//   }
// }

// class DivisionDistrictSelector extends StatefulWidget {
//   @override
//   _DivisionDistrictSelectorState createState() =>
//       _DivisionDistrictSelectorState();
// }

// class _DivisionDistrictSelectorState extends State<DivisionDistrictSelector> {
//   // List<Division> divisions = [
//   //   Division('Division 1', ['District 1-1', 'District 1-2']),
//   //   Division('Division 2', ['District 2-1', 'District 2-2']),
//   // ];

//   String? selectedDivision;
//   String? selectedDistrict;
//   List<String>? districts = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Division and District Selector'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             DropdownButton<String>(
//               hint: Text('Select Division'),
//               value: selectedDivision,
//               items: divisions.map((Division division) {
//                 return DropdownMenuItem<String>(
//                   value: division.name,
//                   child: Text(division.name),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedDivision = value;
//                   districts = divisions
//                       .firstWhere((division) => division.name == value)
//                       .districts;
//                   selectedDistrict = null;
//                 });
//               },
//             ),
//             if (districts != null && districts!.isNotEmpty)
//               DropdownButton<String>(
//                 hint: Text('Select District'),
//                 value: selectedDistrict,
//                 items: districts!.map((String district) {
//                   return DropdownMenuItem<String>(
//                     value: district,
//                     child: Text(district),
//                   );
//                 }).toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedDistrict = value;
//                   });
//                 },
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
