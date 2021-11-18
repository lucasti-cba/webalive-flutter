import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

Future<Token> fetchToken(username, password) async {
  final response =
      await http.post(Uri.parse('https://webalive.herokuapp.com/api/token/'),
          // Send authorization headers to the backend.
          headers: <String, String>{
            'Content-Type': 'application/json',
          },
          body: jsonEncode(<String, String>{
            'username': '$username',
            'password': '$password',
          }));
  final responseJson = jsonDecode(response.body);
  return Token.fromJson(responseJson);
}

class Token {
  final String refresh;
  final String access;

  Token({
    required this.refresh,
    required this.access,
  });

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(
      refresh: json['refresh'],
      access: json['access'],
    );
  }
}

void main() {
  fetchToken('admin', '---------');
  print('Howdy, ${Token.fromJson(json)}!');
}
