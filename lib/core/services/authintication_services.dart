import 'dart:convert';
import '../models/user_model.dart';
import 'package:http/http.dart' as http;

// post lognin with otp and mobile number using http with authrization header
Future<UserModel> postLogin(String mobile, String otp) async {
  final response = await http.post(
    Uri.parse('https://quizu.okoul.com/Login'),
    body: {
      'mobile': mobile,
      'otp': otp,
    },
  );
  if (response.statusCode == 201) {
    return UserModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load user info');
  }
}
