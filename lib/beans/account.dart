import 'dart:convert';

class Account {
  num accountId, phone, partnerId;
  String accountName, emailId;

  Account({
    this.accountId,
    this.accountName,
    this.emailId,
    this.phone,
    this.partnerId
  });

  factory Account.fromJson(Map<String, dynamic> parsedJson) {
    var vehiclesFromJson = parsedJson;

    return new Account(
      accountId: vehiclesFromJson['organizationId'] == null?0:int.parse(vehiclesFromJson['organizationId']),
      accountName: vehiclesFromJson['organizationName']==null?'':vehiclesFromJson['organizationName'],
      emailId: vehiclesFromJson['emailId'] == null?'':vehiclesFromJson['emailId'],
      phone: vehiclesFromJson['phoneNumber'] == null?0:int.parse(vehiclesFromJson['phoneNumber']),
      partnerId: vehiclesFromJson['partnerId']==null?0:int.parse(vehiclesFromJson['partnerId'])
    );
  }

  List<Account> accounts(responseString) {
    final accountData = json.decode(responseString)['organizations'];
    return List<Account>.from(accountData.map((x) => Account.fromJson(x)));
  }
}