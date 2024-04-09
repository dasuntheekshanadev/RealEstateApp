class CategoryModel {
  String title;
  String assetPath;
  CategoryModel({
    required this.title,
    required this.assetPath,
  });
}

List<CategoryModel> categories = [
  CategoryModel(title: 'House', assetPath: 'assets/images/house.jpeg'),
  CategoryModel(title: 'Apartment', assetPath: 'assets/images/apartment.jpeg'),
  CategoryModel(title: 'Open Land', assetPath: 'assets/images/openland.jpeg'),
  CategoryModel(title: 'Town House', assetPath: 'assets/images/townhouse.jpeg'),
];
