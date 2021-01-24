class AlbumModel {
  final userId;
  final id;
  final title;

  const AlbumModel({this.userId, this.id, this.title});

  factory AlbumModel.fromJson(Map<String, dynamic> json) =>
      AlbumModel(userId: json['userId'], id: json['id'], title: json['title']);

  factory AlbumModel.empty() => AlbumModel(title: '', id: 0, userId: 0);
}
