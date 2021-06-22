part of 'topics_cubit.dart';

abstract class TopicsState extends Equatable {
  const TopicsState();
}

class TopicsInitial extends TopicsState {
  @override
  List<Object> get props => [];
}

class TopicsLoaded extends TopicsState {
  final List<Topic> topics;

  TopicsLoaded({required this.topics});

  TopicsLoaded copyWith({List<Topic>? topics}) {
    return TopicsLoaded(topics: topics ?? this.topics);
  }

  @override
  List<Object> get props => [topics];
}

class TopicsLoading extends TopicsState {
  @override
  List<Object> get props => [];
}
