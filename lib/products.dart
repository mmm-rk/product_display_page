import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Ipad Pro",
      "picture": "images/products/1.png",
      "old_price": "600",
      "price": "350",
    },
    {
      "name": "iPhone 15",
      "picture": "images/products/2.png",
      "old_price": "1500",
      "price": "925",
    },
    {
      "name": "Nintendo Switch",
      "picture": "images/products/4.png",
      "old_price": "230",
      "price": "180",
    },
    {
      "name": "Playstation 5",
      "picture": "images/products/3.png",
      "old_price": "2400",
      "price": "2000",
    },
    /*
    {
      "name": "Nike ACG Therma-FIT",
      "picture": "images/products/11.png",
      "old_price": "210",
      "price": "170",
    },
    {
      "name": "Nike SB",
      "picture": "images/products/12.png",
      "old_price": "350",
      "price": "290",
    },
    {
      "name": "2024 NBA All-Star Weekend",
      "picture": "images/products/9.png",
      "old_price": "300",
      "price": "270",
    },
    {
      "name": "Jordan Heritage",
      "picture": "images/products/10.png",
      "old_price": "450",
      "price": "380",
    },
    {
      "name": "SB Dunk High Pro",
      "picture": "images/products/8.png",
      "old_price": "1400",
      "price": "1250",
    },
    {
      "name": "Nike Air Force 1",
      "picture": "images/products/5.png",
      "old_price": "2000",
      "price": "1750",
    },
    {
      "name": "Nike Air Jordan 1 Mid SE",
      "picture": "images/products/6.png",
      "old_price": "2500",
      "price": "2300",
    },
    {
      "name": "Nike Air Max Plus Drift",
      "picture": "images/products/7.png",
      "old_price": "4500",
      "price": "4350",
    },
    */
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['old_price'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  const SingleProduct(
      {super.key,
      this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice});

  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(),


            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    'New Price: \$$productPrice',
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 13,
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    'Old Price: \$$productOldPrice',
                    style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Color.fromARGB(255, 125, 34, 28),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              child: Image.asset(productPicture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
