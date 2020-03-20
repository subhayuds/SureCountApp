import 'dart:convert';

class Device {
  num deviceId, modemType, organization, installationType, lastHbTime, createdBy;
  double lastLatitude, lastLongitude;
  String deviceSerial, simCard, deviceIMEI;

  Device({
    this.deviceId,
    this.modemType,
    this.organization,
    this.installationType,
    this.lastHbTime,
    this.lastLatitude,
    this.lastLongitude,
    this.deviceSerial,
    this.simCard,
    this.deviceIMEI,
    this.createdBy
  });

  factory Device.fromJson(Map<String, dynamic> parsedJson) {
    var devicesFromJson = parsedJson;

    return new Device(
      deviceId: devicesFromJson['deviceId'] == null?0:int.parse(devicesFromJson['deviceId']),
      modemType: devicesFromJson['modemType']==null?0:int.parse(devicesFromJson['modemType']),
      organization: devicesFromJson['organization'] == null?0:int.parse(devicesFromJson['organization']),
      installationType: devicesFromJson['installationType'] == null?0:int.parse(devicesFromJson['installationType']),
      lastHbTime: devicesFromJson['lastHBTime']==null?0:int.parse(devicesFromJson['lastHBTime']),
      lastLatitude: devicesFromJson['lastLatitude']==null?0:double.parse(devicesFromJson['lastLatitude']),
      lastLongitude: devicesFromJson['lastLongitude']==null?0:double.parse(devicesFromJson['lastLongitude']),
      deviceSerial: devicesFromJson['deviceSerial']==null?'-':devicesFromJson['deviceSerial'],
      simCard: devicesFromJson['simCard']==null?'-':devicesFromJson['simCard'],
      deviceIMEI: devicesFromJson['deviceImei']==null?'-':devicesFromJson['deviceImei'],
      createdBy: devicesFromJson['createdBy']==null?0:int.parse(devicesFromJson['createdBy'])
    );
  }

  List<Device> devices(responseString) {
    final deviceData = json.decode(responseString)['devices'];
    if(deviceData == null)
      return null;
    else
    return List<Device>.from(deviceData.map((x) => Device.fromJson(x)));
  }
}