class Topic {
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
}
