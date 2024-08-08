import 'package:bank_web_app/constants/app_colors.dart';
import 'package:bank_web_app/features/home/faq/controller/faq_controller.dart';
import 'package:bank_web_app/features/home/faq/model/question_category_model.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final FaqController controller;
  final int index;

  const CategoryContainer({Key? key, required this.controller, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionCategoryModel category = controller.categories[index];
    return InkWell(
            onTap: () {
              controller.updateCategory(category.id);
            },
            child: Container(
              margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.02),
              width: MediaQuery.sizeOf(context).width / 7,
              height: MediaQuery.sizeOf(context).height * 0.1,
              decoration: BoxDecoration(
                  color: controller.currentCategory == category.id
                      ? AppColors.appWhite
                      : const Color(AppColors.background),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: controller.currentCategory == category.id
                          ? const Color(AppColors.appGreen)
                          : AppColors.appWhite)),
              child: Center(
                child: Text(
                  category.title,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );

  }
}
