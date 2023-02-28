import 'package:favourite_shop/models/product.dart';

class Products{
  final List<Product> items = [
    Product(
        id: 'p1',
        title: 'Футболка',
        description: 'Самая удобная повседневная одежда',
        price: 580,
        imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Blue_Tshirt.jpg/250px-Blue_Tshirt.jpg'),
    Product(
        id: 'p2',
        title: 'Брюки',
        description: 'Одежда свободного стиля',
        price: 2480.5,
        imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Trousers-colourisolated.jpg/170px-Trousers-colourisolated.jpg'),
    Product(
        id: 'p3',
        title: 'Блуза',
        description: 'Одежда для деловой женщины',
        price: 1800.30,
        imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/A_white_blouse_with_blue_flowers.jpg/220px-A_white_blouse_with_blue_flowers.jpg'),
    Product(
        id: 'p4',
        title: 'Пальто',
        description: 'Классическая верхняя одежда',
        price: 13000,
        imageURL: 'http://best-guide.ru/wp-content/uploads/2013/10/Covert-Coat-Cordings.jpg'),


  ];

}