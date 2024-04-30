import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AuthProvider with ChangeNotifier {
  bool _obsecure = true;
  bool get obsecure => _obsecure;

  toggleObsecure() {
    _obsecure = !obsecure;
    notifyListeners();
  }

  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    setLoading(true);
    try {
      Response response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': email,
        'password': password,
      });
      // var url = Uri.https('https://reqres.in', '/api/login');
      // var response = await http.post(url, body: {
      //   'email': email,
      //   'password': password,
      // });
      if (response.statusCode == 200) {
        print('Successfull');
        setLoading(false);
      } else {
        print('Failed');
        setLoading(false);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
