class SymptomsModel {
  String id;
  String title;
  String urlImage;
  String description;
  String status;

  SymptomsModel({
    this.id,
    this.title,
    this.urlImage,
    this.description,
    this.status,
  });

  factory SymptomsModel.fromJson(Map doc) => SymptomsModel(
        id: doc['id'],
        title: doc['title'],
        urlImage: doc['url_image'],
        description: doc['description'],
        status: doc['status'],
      );
}
