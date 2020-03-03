import 'dart:convert';

class Vehicle {
  num vehicleId, organizationId, deviceId;
  String registrationNumber;

  Vehicle({
    this.vehicleId,
    this.registrationNumber,
    this.organizationId,
    this.deviceId
  });

  factory Vehicle.fromJson(Map<String, dynamic> parsedJson) {
    var vehiclesFromJson = parsedJson;

    return new Vehicle(
      vehicleId: vehiclesFromJson['vehicleId'] == null?0:int.parse(vehiclesFromJson['vehicleId']),
      registrationNumber: vehiclesFromJson['registrationNumber']==null?'':vehiclesFromJson['registrationNumber'],
      organizationId: vehiclesFromJson['organizationId'] == null?0:int.parse(vehiclesFromJson['organizationId']),
      deviceId: vehiclesFromJson['deviceId']==null?0:int.parse(vehiclesFromJson['deviceId'])
    );
  }

  List<Vehicle> vehicles(responseString) {
    final vehicleData = json.decode(responseString)['vehicles'];
    return List<Vehicle>.from(vehicleData.map((x) => Vehicle.fromJson(x)));
  }
}