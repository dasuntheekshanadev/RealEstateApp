class PortfolioModel {
  String title;
  String assetPath;
  PortfolioModel({
    required this.title,
    required this.assetPath,
  });
}

List<PortfolioModel> categoriesp = [
  PortfolioModel(title: 'House', assetPath: 'assets/images/house.jpeg'),
  PortfolioModel(title: 'Apartment', assetPath: 'assets/images/apartment.jpeg'),
  PortfolioModel(title: 'Open Land', assetPath: 'assets/images/openland.jpeg'),
  PortfolioModel(
      title: 'Town House', assetPath: 'assets/images/townhouse.jpeg'),
];
