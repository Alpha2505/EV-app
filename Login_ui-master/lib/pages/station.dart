import "package:flutter/material.dart";
import 'package:login_ui/model/stationModel.dart';
import 'package:login_ui/pages/stationdetail.dart';

class station extends StatefulWidget {

  @override
  _stationState createState() => _stationState();
}

class _stationState extends State<station> {

  static List<String> stationname = ['ChargeGrid','Fortnum','Charzer'];
  static List url = [
    'https://2.bp.blogspot.com/-OXaiN6n7oXI/T5TZvk0h6jI/AAAAAAAAA8s/_EfDAyzmRAo/s1600/biogas+station.jpg',
    'https://photos.plugshare.com/photos/440424.JPG',
    'https://i.pinimg.com/originals/f7/0b/77/f70b773ad08365650fa9020ae204de92.jpg'];

  final List<StationModel> Stationdata = List.generate(
      stationname.length,
          (index)
      => StationModel('${stationname[index]}', '${url[index]}', '${stationname[index]} Description...'));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text('EV Charging Station Near me'),
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

        body: ListView.builder(
            itemCount: Stationdata.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(Stationdata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Stationdata[index].ImageUrl),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Stationdetail(stationModel: Stationdata[index],)));
                  },
                ),

              );
            })
    );
  }
}
