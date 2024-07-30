import 'package:bank_web_app/features/home/stories/model/stories_model.dart';
import 'package:flutter/material.dart';

class StoriesContainer extends StatelessWidget {
  final StoriesModel story;
  final double? width;
  final double? height;
  const StoriesContainer({Key? key, required this.story, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset(story.image, width: width, fit: BoxFit.fill,))),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(story.description, style: const TextStyle(fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
