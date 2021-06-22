import 'package:faker/faker.dart';
import 'package:share_book/models/topics.dart';

class TopicsRepository {
  List<Topic> getTopics() {
    final _imageIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
    List<Topic> _topics = [];
    for (int i = 0; i < _imageIds.length; i++) {
      final faker = Faker();
      final topic = Topic(
        title: faker.company.name(),
        image: faker.image,
        id: faker.guid.guid(),
      );
      _topics.add(topic);
    }
    return _topics;
  }
}
