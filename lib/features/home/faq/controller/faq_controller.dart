import 'package:bank_web_app/features/home/faq/model/question_answer_model.dart';
import 'package:bank_web_app/features/home/faq/model/question_category_model.dart';
import 'package:get/get.dart';

class FaqController extends GetxController {
  int currentCategory = 0;
  List<QuestionCategoryModel> categories = [
    QuestionCategoryModel(id: 0, title: 'General', qAndA: [
      QuestionAnswerModel(
          answer:
              'Small business loans are a category of loans and financial products a lender might provide to a small business',
          question: 'What Is A Small Business Loan?'),
      QuestionAnswerModel(
          answer:
              'Yes, but it may have higher interest rates and stricter terms.',
          question: 'Can I Get A Business Loan With Bad Credit?'),
      QuestionAnswerModel(
          answer: 'Secured loans require collateral; unsecured loans don\'t.',
          question:
              'What Is The Difference Between Secured And Unsecured Loans?'),
      QuestionAnswerModel(
          answer: 'Funds can be received within a few days.',
          question: 'How fast can I receive my funds?'),
      QuestionAnswerModel(
          answer:
              'Business loans provide capital repaid with interest over time.',
          question: 'How Do Business Loans Work?'),
      QuestionAnswerModel(
          answer: 'A revolving credit line for business expenses.',
          question: 'What is a business line of credit?'),
      QuestionAnswerModel(
          answer:
              'Term loans, lines of credit, equipment financing, and SBA loans.',
          question: 'What Types Of Business Loans AreAvailable?'),
      QuestionAnswerModel(
          answer: 'Businesses with good credit and revenue history.',
          question: 'What businesses are eligible for a line of credit?')
    ]),
    QuestionCategoryModel(id: 1, title: 'Payment', qAndA: [
      QuestionAnswerModel(
          answer:
              'Yes, but it may have higher interest rates and stricter terms.',
          question: 'Can I Get A Business Loan With Bad Credit?'),
      QuestionAnswerModel(
          answer: 'Funds can be received within a few days.',
          question: 'How fast can I receive my funds?'),
      QuestionAnswerModel(
          answer: 'A revolving credit line for business expenses.',
          question: 'What is a business line of credit?'),
      QuestionAnswerModel(
          answer: 'Businesses with good credit and revenue history.',
          question: 'What businesses are eligible for a line of credit?')
    ]),
    QuestionCategoryModel(id: 2, title: 'Transaction', qAndA: [
      QuestionAnswerModel(
          answer: 'Funds can be received within a few days.',
          question: 'How fast can I receive my funds?'),
      QuestionAnswerModel(
          answer:
              'Business loans provide capital repaid with interest over time.',
          question: 'How Do Business Loans Work?'),
      QuestionAnswerModel(
          answer: 'A revolving credit line for business expenses.',
          question: 'What is a business line of credit?'),
      QuestionAnswerModel(
          answer:
              'Term loans, lines of credit, equipment financing, and SBA loans.',
          question: 'What Types Of Business Loans AreAvailable?'),
    ]),
    QuestionCategoryModel(id: 3, title: 'Security', qAndA: [
      QuestionAnswerModel(
          answer: 'Secured loans require collateral; unsecured loans don\'t.',
          question:
              'What Is The Difference Between Secured And Unsecured Loans?'),
    ]),
    QuestionCategoryModel(id: 4, title: 'Loan', qAndA: [
      QuestionAnswerModel(
          answer:
              'Small business loans are a category of loans and financial products a lender might provide to a small business',
          question: 'What Is A Small Business Loan?'),
      QuestionAnswerModel(
          answer: 'Secured loans require collateral; unsecured loans don\'t.',
          question:
              'What Is The Difference Between Secured And Unsecured Loans?'),
      QuestionAnswerModel(
          answer:
              'Business loans provide capital repaid with interest over time.',
          question: 'How Do Business Loans Work?'),
      QuestionAnswerModel(
          answer:
              'Term loans, lines of credit, equipment financing, and SBA loans.',
          question: 'What Types Of Business Loans AreAvailable?'),
    ]),
  ];

  void updateCategory(int id){
    currentCategory = id;
    update();
  }

  void selectAnswer(QuestionAnswerModel question){
    question.isSelected = !question.isSelected;
    update();
  }

}
