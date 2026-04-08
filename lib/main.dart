import 'package:flutter/material.dart';
import 'second_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  //inisialisasi data produk
  final String name = "Highheels Cream";
  final int price =  150000;
  final String imageUrl = "https://fastly.picsum.photos/id/21/3008/2008.jpg?hmac=T8DSVNvP-QldCew7WD4jj_S3mWwxZPqdF0CNPksSko4";
  final String description =  "Highheels Cream ini merupakan sepatu wanita dengan desain elegan dan warna cream yang lembut.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
          name: name,
          price: price,
          imageUrl: imageUrl,
          description: description,
        ),
        '/second': (context) => SecondPage(name: name, price: price, imageUrl: imageUrl, description: description),
      },
    );
  }
}