class NewsModel {
  int id;
  String name;
  String author;
  String linkUrl;
  String imageUrl;
  bool spotlight;

  NewsModel({
    this.id,
    this.name,
    this.author,
    this.linkUrl,
    this.imageUrl,
    this.spotlight,
  });

  factory NewsModel.fromJson(Map doc) => NewsModel(
        id: doc['id'],
        name: doc['name'],
        author: doc['author'],
        linkUrl: doc['link_url'],
        imageUrl: doc['image_url'],
        spotlight: doc['spotlight'],
      );
}
