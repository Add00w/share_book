import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:share_book/models/topics.dart';
import 'package:share_book/repositories/topics_repo.dart';

part 'topics_state.dart';

class TopicsCubit extends Cubit<TopicsState> {
  TopicsCubit(this._topicsRepo) : super(TopicsInitial());
  final TopicsRepository _topicsRepo;
  void getTopics() {
    emit(TopicsLoading());
    final _topics = _topicsRepo.getTopics();
    emit(TopicsLoaded(topics: _topics));
    _log(_topics);
  }

  void selectTopic(String? topicId) async {
    final list = List<Topic>.from((state as TopicsLoaded).topics);
    final index = list.indexWhere((element) => element.id == topicId);
    final updatedTopic = list[index];
    final newTopic = Topic(
      id: updatedTopic.id,
      title: updatedTopic.title,
      image: updatedTopic.image,
      selected: !updatedTopic.selected,
    );
    list[index] = newTopic;
    emit((state as TopicsLoaded).copyWith(topics: list));
  }

  void _log(List<Topic> topics) {
    for (var topic in topics) {
      log(topic.title);
    }
  }
}
