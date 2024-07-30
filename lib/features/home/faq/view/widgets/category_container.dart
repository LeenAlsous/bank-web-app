import 'package:bank_web_app/features/constants/app_colors.dart';
import 'package:bank_web_app/features/home/faq/controller/faq_controller.dart';
import 'package:bank_web_app/features/home/faq/model/question_category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CategoryContainer extends StatelessWidget {
  final QuestionCategoryModel categoryModel;

  const CategoryContainer({Key? key, required this.categoryModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FaqController>(
        init: FaqController(),
        builder: (controller) {
          return InkWell(
            onTap: () {
              controller.updateCategory(categoryModel.id);
            },
            child: Container(
              margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.02),
              width: MediaQuery.sizeOf(context).width / 7,
              height: MediaQuery.sizeOf(context).height * 0.1,
              decoration: BoxDecoration(
                  color: controller.currentCategory == categoryModel.id
                      ? AppColors.appWhite
                      : const Color(AppColors.background),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: controller.currentCategory == categoryModel.id
                          ? const Color(AppColors.appGreen)
                          : AppColors.appWhite)),
              child: Center(
                child: Text(
                  categoryModel.title,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        });
  }
}
