
// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import 'package:flutter/material.dart';

// class apihomepage extends StatefulWidget {
//   const apihomepage({super.key});

//   @override
//   State<apihomepage> createState() => _apihomepageState();
// }

// class _apihomepageState extends State<apihomepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [

//         ],
//       ),
//     );
//   }

//   Future getdata()async{

//     var response = await http.get(Uri.parse("https://api.currencyapi.com/v3/latest?apikey=cur_live_zuaTCDVbopL9MjsRWRaXR0DarghKMHjKDYJFcU04"));

//     if(response.statusCode==200){

//       var jason = json.decode(response.body);

//       var data = jason["data"] as Map<String,dynamic>;

//         setState(() {
//         data.forEach((key, value) {
//           bool isBDT = value['code'] == 'BDT';
//           var curMap = {'code': value['code'], 'value': value['value']};

//           if (isBDT) {
//             currencies.insert(0, curMap);
//           } else {
//             currencies.add(curMap);
//           }
//         });
//         // isLoading = false;
//       });

//       data.forEach((Key value){})
//      }
//   }
// }