class TipsModel {
  String id;
  String title;
  String urlImage;
  String description;

  TipsModel({
    this.id,
    this.title,
    this.urlImage,
    this.description,
  });

  factory TipsModel.fromJson(Map doc) => TipsModel(
        id: doc['id'],
        title: doc['title'],
        urlImage: doc['url_image'],
        description: doc['description'],
      );
}
