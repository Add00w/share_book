import 'package:equatable/equatable.dart';

class Topic extends Equatable {
  final String id;
  final String title;
  final image;
  bool selected;

  Topic({
    required this.title,
    required this.image,
    this.selected = false,
    required this.id,
  });

  @override
  List<Object?> get props => [id, title, image, selected];
}
