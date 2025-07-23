class PostModel {
  final String title;
  final String description;
  final List<Uri> attachmentUrls;
  const PostModel({
    required this.title,
    required this.description,
    this.attachmentUrls = const [],
  });
}
