import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    try {
      var url = Uri.https("https://reqres.in/", "/api/login");
      var response = await http.post(url, body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        print('Successfull');
      } else {
        print('Failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
