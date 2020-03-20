import 'dart:convert';

class Account {
  num accountId, partnerId;
  String accountName, emailId, phone, createdBy;

  Account({
    this.accountId,
    this.accountName,
    this.emailId,
    this.phone,
    this.partnerId,
    this.createdBy
  });

  factory Account.fromJson(Map<String, dynamic> parsedJson) {
    var vehiclesFromJson = parsedJson;

    return new Account(
      accountId: vehiclesFromJson['organizationId'] == null?0:int.parse(vehiclesFromJson['organizationId']),
      accountName: vehiclesFromJson['organizationName']==null?'':vehiclesFromJson['organizationName'],
      emailId: vehiclesFromJson['emailId'] == null?'':vehiclesFromJson['emailId'],
      phone: vehiclesFromJson['phoneNumber'] == null?'':vehiclesFromJson['phoneNumber'],
      partnerId: vehiclesFromJson['partnerId']==null?0:int.parse(vehiclesFromJson['partnerId']),
      createdBy: vehiclesFromJson['createdBy']==null?'':vehiclesFromJson['createdBy']
    );
  }

  List<Account> accounts(responseString) {
    final accountData = json.decode(responseString)['organizations'];
    if(accountData == null)
      return null;
    else
      return List<Account>.from(accountData.map((x) => Account.fromJson(x)));
  }
}