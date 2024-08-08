import 'package:bank_web_app/features/home/faq/model/question_answer_model.dart';

class QuestionCategoryModel{
  final int id;
  final String title;
  final List<QuestionAnswerModel> qAndA;

  const QuestionCategoryModel({required this.id, required this.title, required this.qAndA});
}