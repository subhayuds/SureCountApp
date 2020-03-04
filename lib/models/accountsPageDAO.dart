import 'package:http/http.dart' as http;
import 'package:sure_count_app/utilities/constants.dart';

class AccountPageDAO {
  AccountPageDAO();
  
  Future getAccountsList() async {
    final response = await http.get(Constants.serviceBaseURL + Constants.accountServicePath, headers: {"Accept": "application/json"},);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load vehicles');
    }
  }
}