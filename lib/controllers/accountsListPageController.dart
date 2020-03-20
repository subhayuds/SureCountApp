import 'package:flutter/cupertino.dart';
import 'package:sure_count_app/beans/account.dart';
import 'package:sure_count_app/models/accountsListPageDAO.dart';
import 'package:sure_count_app/utilities/utility.dart';

class AccountsListPageController {
  AccountsListPageController();

  Future getAccountList() async {
    String accountData = await AccountListPageDAO().getAccountsList();
    return Account().accounts(accountData);
  }

  Future<void> onAccountListItemTap(BuildContext context, num accountId) async {
    AccountListPageDAO().getAccountDetails(accountId).then((responseAccountDetailsData){
      List<Account> accountDetailsList = Account().accounts(responseAccountDetailsData);
      if(accountDetailsList == null || accountDetailsList.length == 0)
        Utility().showGenericAlert(context, 'Account details not found!!!');
      else
        Navigator.pushNamed(
          context, 
          '/vehicleDetails',
          arguments: <String, Account>{
            'vehicleDetails': accountDetailsList[0]
          }
        );
    });
  }
}