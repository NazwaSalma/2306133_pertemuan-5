import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //inisialisasi data produk yang diterima
  final String name;
  final int price;
  final String imageUrl;
  final String description;
//constructor untuk menerima data produk
  const HomePage({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Home'),
        backgroundColor: Color.fromARGB(255, 122, 158, 235),
      ),
      body: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Image.network(
            imageUrl,
            width: 200,
            height: 300,
            fit: BoxFit.cover,
            ),
            Text(price.toString()),
            Text(  
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
           SizedBox(height: 20),
            ElevatedButton( 
              child: Text("Lihat Detail"),
              onPressed: () {
                //navigasi ke halaman kedua
                 Navigator.pushNamed(
                   context,
                   '/second',
                 );
              },
            )
        ],
      )
    );
  }
}