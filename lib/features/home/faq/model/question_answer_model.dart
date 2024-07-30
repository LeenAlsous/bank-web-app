class QuestionAnswerModel{
  final String question;
  final String answer;
  bool isSelected;
  QuestionAnswerModel({required this.answer, required this.question, this.isSelected = false});
}