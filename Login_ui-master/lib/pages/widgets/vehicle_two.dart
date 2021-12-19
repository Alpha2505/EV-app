import 'package:flutter/material.dart';
import 'package:login_ui/common/theme_helper.dart';
import 'package:login_ui/pages/widgets/home.dart';

class VehicleTwoInfo extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _VehicleTwoInfoState();
  }
}

class _VehicleTwoInfoState extends State<VehicleTwoInfo> {
  double _headerHeight = 25;
  final Key _formKey = GlobalKey<FormState>();
  bool agree = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Add Vehicle Information'),
        toolbarHeight: 75,
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
            ),
            SafeArea(
              child: Container(  //this is login form
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: [

                    SizedBox(height: 30.0),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(height: 20.0),
                          TextField(
                            decoration: ThemeHelper().textInputDecoration('Make', 'Enter your vehicle name'),
                          ),
                          SizedBox(height: 30.0),
                          TextField(
                            decoration: ThemeHelper().textInputDecoration('Model', 'Enter your vehicle model'),
                          ),
                          SizedBox(height: 30),
                          TextField(
                            decoration: ThemeHelper().textInputDecoration('Connector', "Enter connector type"),
                          ),
                          SizedBox(height: 30),
                          TextField(
                            decoration: ThemeHelper().textInputDecoration('Vehicle Registration Number', 'Enter your vehicle registration number'),
                          ),
                          SizedBox(height: 30),
                          TextField(
                            decoration: ThemeHelper().textInputDecoration('VIN', "Enter your vehicle's VIN number"),
                          ),

                          SizedBox(height: 90),
                          Container(
                            decoration: ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              onPressed: () {
                                Navigator.pop(context);
                              }, //after login redirect to homepage
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text('add'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
