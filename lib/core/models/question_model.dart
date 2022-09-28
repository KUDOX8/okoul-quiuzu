class QuestionModel {
  final String question;
  final String a;
  final String b;
  final String c;
  final String d;
  final String correct;

  QuestionModel({
    required this.question,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.correct,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      question: json['Question'],
      a: json['a'],
      b: json['b'],
      c: json['c'],
      d: json['d'],
      correct: json['correct'],
    );
  }
}
