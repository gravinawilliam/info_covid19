class DonorsModel {
  int id;
  String donorName;

  DonorsModel({
    this.id,
    this.donorName,
  });

  factory DonorsModel.fromJson(Map doc) => DonorsModel(
        id: doc['id'],
        donorName: doc['donor_name'],
      );
}
