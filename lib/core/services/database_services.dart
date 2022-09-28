import 'dart:convert';
import 'package:okoul_quizu/core/models/question_model.dart';
import 'package:okoul_quizu/core/models/leaderboard_model.dart';
import 'package:okoul_quizu/core/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

// start of get methods section//
// get user info using http with authrization header
Future<UserModel> getUserInfo() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');
  final response = await http.get(
    Uri.parse('https://quizu.okoul.com/UserInfo'),
    headers: {
      'Authorization': 'Bearer $token',
    },
  );
  if (response.statusCode == 200) {
    return UserModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load user info');
  }
}

// get question list using http with authrization header
Future<List<QuestionModel>> getQuestionList() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');
  var response = await http.get(
    Uri.parse('https://quizu.okoul.com/Questions'),
    headers: {
      'Authorization': 'Bearer $token',
    },
  );
  if (response.statusCode == 200) {
    List questionsList = jsonDecode(response.body);
    List<QuestionModel> questions = [];
    for (var q in questionsList) {
      questions.add(QuestionModel.fromJson(q));
    }
    return questions;
  } else {
    throw Exception('Failed to load questions');
  }
}

// get leaderboard using http with autherization header
Future<List<LeaderboardModel>> getLeaderboard() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var res = await http.get(
    Uri.parse('https://quizu.okoul.com/TopScores'),
    headers: {
      'Authorization': 'Bearer ${prefs.getString('token')}',
    },
  );

  List leaderboradList = await jsonDecode(res.body);
  List<LeaderboardModel> list = leaderboradList.isNotEmpty
      ? leaderboradList.map((c) => LeaderboardModel.fromJson(c)).toList()
      : [];
  return list;
}
// end of get methods section//

// start of post methods section//

// post new user info using http with authrization header
Future<UserModel> postUserInfo(String name, String mobile) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');
  final response = await http.post(
    Uri.parse('https://quizu.okoul.com/UserInfo'),
    headers: {
      'Authorization': 'Bearer $token',
    },
    body: {
      'name': name,
    },
  );
  if (response.statusCode == 201) {
    return UserModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to post user info');
  }
}

// post score using http with authrization header
Future<LeaderboardModel> postScore(String score) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');
  final response = await http.post(
    Uri.parse('https://quizu.okoul.com/Score'),
    headers: {
      'Authorization': 'Bearer $token',
    },
    body: {
      'score': score,
    },
  );
  if (response.statusCode == 201) {
    return LeaderboardModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to post user score');
  }
}

// end of post methods section//

// start of shared preferences section//

//get token from shared preferences
Future<String> getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String token = prefs.getString('token') ?? '';
  return token;
}

//set token in shared preferences
Future<void> setToken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('token', token);
}

// end of shared preferences section//







