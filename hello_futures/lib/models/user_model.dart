class UserModel {
  final String userId;
  final String email;
  final Uri? avatarUrl;
  const UserModel({
    required this.userId,
    required this.email,
    this.avatarUrl,
  });
}
