import 'package:http/http.dart' as http;
import 'package:petcare/constants/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class APIManager {
  Future<void> authenticate({email: String, password: String}) async {
    var client = http.Client();

    try {
      var response = await client.post(Strings.authenticateUrl, body: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        var token = response.body;
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        sharedPreferences.setString('token', token);
      }
    } catch (Exception) {
      // fail
      throw new Error();
    }
  }
}
