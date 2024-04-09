class PortfoliopropertyModel {
  String title;
  String subTitle;
  String details;
  String thumbnail;
  List<String> images;
  int rooms;
  int area;
  int floors;
  int price;
  int garage;
  int bathrooms;
  int kitchen;
  int income;
  int expenses;
  int managementfee;
  int rates;
  PortfoliopropertyModel({
    required this.title,
    required this.subTitle,
    required this.details,
    required this.thumbnail,
    required this.images,
    required this.rooms,
    required this.area,
    required this.floors,
    required this.price,
    required this.garage,
    required this.bathrooms,
    required this.kitchen,
    required this.income,
    required this.expenses,
    required this.managementfee,
    required this.rates,
  });
}

List<PortfoliopropertyModel> pproperties = [
  PortfoliopropertyModel(
    title: 'Estate Home',
    subTitle: "St. Second Avenue 780, NY",
    details:
        'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad. Amet in dolore occaecat labore non anim. Laborum anim occaecat eiusmod occaecat ut sit. Est excepteur Lorem culpa deserunt anim duis quis anim ea in tempor exercitation exercitation. Veniam magna pariatur irure commodo mollit ut irure. Tempor aute consequat in labore magna sunt et commodo ut cupidatat.',
    thumbnail: 'assets/images/properties/estatehouse.jpeg',
    images: [
      'assets/images/properties/estatehouse.jpeg',
      'assets/images/properties/estatehome2.jpeg',
      'assets/images/properties/estatehome3.jpeg'
    ],
    rooms: 5,
    area: 3000,
    floors: 3,
    price: 300000,
    garage: 2,
    bathrooms: 3,
    kitchen: 1,
    income: 8400,
    expenses: 1000,
    managementfee: 1000,
    rates: 840,
  ),
  PortfoliopropertyModel(
    title: 'Office Building',
    subTitle: "St. Second Avenue 780, NY",
    details:
        'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad. Amet in dolore occaecat labore non anim. Laborum anim occaecat eiusmod occaecat ut sit. Est excepteur Lorem culpa deserunt anim duis quis anim ea in tempor exercitation exercitation. Veniam magna pariatur irure commodo mollit ut irure. Tempor aute consequat in labore magna sunt et commodo ut cupidatat.',
    thumbnail: 'assets/images/properties/office.jpeg',
    images: [
      'assets/images/properties/office2.jpeg',
      'assets/images/properties/office3.jpeg',
      'assets/images/properties/office.jpeg'
    ],
    rooms: 3,
    area: 3500,
    floors: 2,
    price: 50000000,
    garage: 2,
    bathrooms: 3,
    kitchen: 1,
    income: 10400,
    expenses: 1200,
    managementfee: 1600,
    rates: 1840,
  ),
  PortfoliopropertyModel(
    title: 'Vacant land',
    subTitle: "St. Second Avenue 780, NY",
    details:
        'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad. Amet in dolore occaecat labore non anim. Laborum anim occaecat eiusmod occaecat ut sit. Est excepteur Lorem culpa deserunt anim duis quis anim ea in tempor exercitation exercitation. Veniam magna pariatur irure commodo mollit ut irure. Tempor aute consequat in labore magna sunt et commodo ut cupidatat.',
    thumbnail: 'assets/images/properties/openland1.jpeg',
    images: [
      'assets/images/properties/openland2.jpeg',
      'assets/images/properties/openland1.jpeg',
      'assets/images/properties/openland2.jpeg'
    ],
    rooms: 4,
    area: 4200,
    floors: 3,
    price: 6000000,
    garage: 2,
    bathrooms: 3,
    kitchen: 1,
    income: 6600,
    expenses: 900,
    managementfee: 1000,
    rates: 840,
  ),
];
