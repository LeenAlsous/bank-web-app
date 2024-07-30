import 'package:bank_web_app/features/home/stories/model/stories_model.dart';

class StoriesController{
  // todo: change the photos
  static List<StoriesModel> stories = [
    const StoriesModel(image: 'assets/people02.jpg', description: 'This new capital structure will quickly help us loose the newcomer badge'),
    const StoriesModel(image: 'assets/people002.jpeg', description: 'The team was very helpful and responsive throughout the process'),
    const StoriesModel(image: 'assets/people3.jpeg', description: 'Xenon bank saved my business with quick and easy loan options'),
  ];
}