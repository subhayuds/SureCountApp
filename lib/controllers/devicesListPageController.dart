import 'package:flutter/cupertino.dart';
import 'package:sure_count_app/beans/device.dart';
import 'package:sure_count_app/models/devicesListPageDAO.dart';
import 'package:sure_count_app/utilities/utility.dart';

class DevicesListPageController {
  DevicesListPageController();

  Future getDevicesList() async {
    String deviceData = await DevicesListPageDAO().getDeviceList();
    return Device().devices(deviceData);
  }

  Future<void> onDeviceListItemTap(BuildContext context, num deviceId) async {
    DevicesListPageDAO().getDeviceDetails(deviceId).then((responseDeviceDetailsData){
      List<Device> deviceDetailsList = Device().devices(responseDeviceDetailsData);
      if(deviceDetailsList == null || deviceDetailsList.length == 0)
        Utility().showGenericAlert(context, 'Device details not found!!!');
      else
        Navigator.pushNamed(
          context, 
          '/deviceDetails',
          arguments: <String, Device>{
            'deviceDetails': deviceDetailsList[0]
          }
        );
    });
  }
}