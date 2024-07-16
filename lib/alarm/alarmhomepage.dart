
import 'dart:io';

import 'package:alarm/alarm.dart';
import 'package:alarm/model/alarm_settings.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class alarmhomepage extends StatefulWidget {
  const alarmhomepage({super.key});

  @override
  State<alarmhomepage> createState() => _alarmhomepageState();
}

 

class _alarmhomepageState extends State<alarmhomepage> {

  @override
  void initState() {
    // TODO: implement initState
    if(Platform.isAndroid){
      androidalarmpermition();
      adroidcheknotificationpermition();
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

        Alarm.set(alarmSettings:AlarmSettings(id:11, dateTime:DateTime.now().add(Duration(seconds:30)), assetAudioPath:"assets/mozart.mp3", notificationTitle:"alarm is ringing", notificationBody:"alarm"));
        
      },),
      body: Column(
        children: [
          
        ],
      ),
    );
  }

  Future adroidcheknotificationpermition()async{
    var stutas = await Permission.notification.status;

    if(stutas.isDenied){

      var res = Permission.notification.request();
    }
  }

  Future androidalarmpermition()async{

    var status = await Permission.scheduleExactAlarm.status;


    if(status.isDenied){
      Permission.scheduleExactAlarm.request();
    }
  }
}