const String tableCategory = "Category";

class CategoryField {
  static const String id = "_id";
  static const String name = "name";
  static const String image = 'image';
}

class CategoryModel {
  int id;
  String name;
  String image;

  CategoryModel(this.id, this.name, this.image);

  static CategoryModel fromJson(Map<String, Object?> json) => CategoryModel(
      json[CategoryField.id] as int,
      json[CategoryField.name] as String,
      json[CategoryField.image] as String);

  Map<String, Object?> toJson() => {
        CategoryField.id: id,
        CategoryField.name: name,
        CategoryField.image: image
      };
}
