import 'dart:convert';

class Vehicle {
  num vehicleId, organizationId, deviceId;
  double latitude, longitude, altitude, direction;
  String registrationNumber, createdBy;

  Vehicle({
    this.vehicleId,
    this.registrationNumber,
    this.organizationId,
    this.deviceId,
    this.latitude,
    this.longitude,
    this.altitude,
    this.direction,
    this.createdBy
  });

  factory Vehicle.fromJson(Map<String, dynamic> parsedJson) {
    var vehiclesFromJson = parsedJson;

    return new Vehicle(
      vehicleId: vehiclesFromJson['vehicleId'] == null?0:int.parse(vehiclesFromJson['vehicleId']),
      registrationNumber: vehiclesFromJson['registrationNumber']==null?'-':vehiclesFromJson['registrationNumber'],
      organizationId: vehiclesFromJson['organizationId'] == null?0:int.parse(vehiclesFromJson['organizationId']),
      deviceId: vehiclesFromJson['deviceId']==null?0:int.parse(vehiclesFromJson['deviceId']),
      latitude: vehiclesFromJson['latitude']==null?0:double.parse(vehiclesFromJson['latitude']),
      longitude: vehiclesFromJson['longitude']==null?0:double.parse(vehiclesFromJson['longitude']),
      altitude: vehiclesFromJson['altitude']==null?0:double.parse(vehiclesFromJson['altitude']),
      direction: vehiclesFromJson['direction']==null?0:double.parse(vehiclesFromJson['direction']),
      createdBy: vehiclesFromJson['createdBy']==null?'-':vehiclesFromJson['createdBy']
    );
  }

  List<Vehicle> vehicles(responseString) {
    List vehicleData = json.decode(responseString)['vehicles'];
    if(vehicleData == null)
      return null;
    else
      return List<Vehicle>.from(vehicleData.map((x) => Vehicle.fromJson(x)));
  }
}