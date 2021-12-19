import 'package:flutter/material.dart';
import 'package:login_ui/pages/widgets/vehicle_info.dart';
import 'package:login_ui/pages/widgets/vehicle_two.dart';

class Vehicle extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _VehicleState();
  }
}

class _VehicleState extends State<Vehicle> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Vehicle'),
        toolbarHeight: 75,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => VehicleTwoInfo()));
          },),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            gradient: LinearGradient(
                colors: [Colors.teal.shade400, Colors.grey],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
            ),
          ),
        ),
      ),

    );
  }
}

