import 'package:flutter/material.dart';
import 'package:login_ui/common/theme_helper.dart';
import 'package:login_ui/pages/payment.dart';

class slot extends StatefulWidget {
  @override
  State<slot> createState() => _slotState();
}

class _slotState extends State<slot> {
  String dropdownvalue = '1PM-2PM';

  var items = [
    '9AM-10AM',
    '10AM-11AM',
    '11AM-12AM',
    '12AM-1AM',
    '1PM-2PM',
    '2PM-3PM',
    '3PM-4PM',
    '5PM-6PM'
  ];

  final myController = TextEditingController();

  String inputId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text('BOOK YOUR SLOT'),
          toolbarHeight: 75,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.teal.shade400, Colors.grey],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  height: 80,
                  width: 200,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter ID',
                    ),
                    controller: myController,
                    onChanged: (text) {
                      inputId = text;
                      print(inputId);
                    },
                  ),
                ),
              ),
              Container(
                child: DropdownButton(
                  value: dropdownvalue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(value: items, child: Text(items));
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      dropdownvalue = newValue.toString();
                    });
                  },
                ),
              ),
              SizedBox(height: 90),
              Container(
                  decoration: ThemeHelper().buttonBoxDecoration(context),
                  child: ElevatedButton(
                      style: ThemeHelper().buttonStyle(),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                // Retrieve the text the that user has entered by using the
                                // TextEditingController.
                                content: Text(
                                    "Station-ID - ${inputId}\nSlot - ${dropdownvalue}"));
                          },
                        );
                      },
                      child: Text("Verify".toUpperCase(),
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)))),
              SizedBox(height: 90),
              Container(
                decoration: ThemeHelper().buttonBoxDecoration(context),
                child: ElevatedButton(
                  style: ThemeHelper().buttonStyle(),
                  onPressed: () {
                    // Navigator.pushAndRemoveUntil(context,
                    //     MaterialPageRoute(builder: (context) => UpdateProfile()),
                    //         (route) => false);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => payment()),
                        (route) => false);
                  }, //after login redirect to homepage
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Text('Pay to confirm slot'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
              )
            ],
          )),
        ));
  }
}
