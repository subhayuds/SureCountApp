import 'package:sure_count_app/beans/account.dart';
import 'package:sure_count_app/models/accountsPageDAO.dart';

class AccountsPageController {
  AccountsPageController();

  Future getAccountList() async {
    String accountData = await AccountPageDAO().getAccountsList();
    return Account().accounts(accountData);
  }
}