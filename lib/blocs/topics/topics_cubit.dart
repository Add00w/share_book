import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:share_book/models/topics.dart';
import 'package:share_book/repositories/topics_repo.dart';

part 'topics_state.dart';

class TopicsCubit extends Cubit<TopicsState> {
  TopicsCubit(this._topicsRepo) : super(TopicsInitial());
  final TopicsRepository _topicsRepo;
  List<Topic> _topics = [];
  void getTopics() {
    emit(TopicsLoading());
    _topics = _topicsRepo.getTopics();
    emit(TopicsLoaded(topics: _topics));
    _log(_topics);
  }

  void selectTopic(String? topicId) async {
    log('Topic Id $topicId');
    // final list1 = <Topic>[];
    // for (var item in _topics) {
    //   if (item.id == topicId) {
    //     item.selected = !item.selected;
    //   }
    //   list1.add(item);
    // }
    // emit((state as TopicsLoaded).copyWith(topics: list1));

    final list = List<Topic>.from(_topics);
    final index = list.indexWhere((element) => element.id == topicId);
    final updatedTopic = list[index];
    updatedTopic.selected = !updatedTopic.selected;
    list.removeAt(index);
    list.add(updatedTopic);
    emit((state as TopicsLoaded).copyWith(topics: list));
  }

  void _log(List<Topic> topics) {
    for (var topic in topics) {
      log(topic.title);
    }
  }
}
