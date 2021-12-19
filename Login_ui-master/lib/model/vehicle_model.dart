class VehicleModel {
  String uid;
  String make;
  String model;
  String connector;
  String veh_regno;
  String vin;

  VehicleModel({this.uid, this.make, this.model, this.connector, this.veh_regno, this.vin});
  factory VehicleModel.fromMap(map){
    return VehicleModel(
        uid: map['uid'],
        make: map['make'],
        model: map['model'],
        connector: map['connector'],
        veh_regno: map['veh_regno'],
        vin: map['vin']
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'uid': uid,
      'make': make,
      'model': model,
      'connector': connector,
      'veh_regno': veh_regno,
      'vin': vin
    };
  }

}

