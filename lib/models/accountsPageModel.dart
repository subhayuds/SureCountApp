import 'package:http/http.dart' as http;

Future<String> fetchAlbum() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/albums/1',headers: {"Accept": "application/json"},);

  if (response.statusCode == 200) {
    return null;
    // If the server did return a 200 OK response, then parse the JSON.
    //return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load accounts');
  }
}
