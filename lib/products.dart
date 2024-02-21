import 'package:flutter/material.dart';
import 'package:product_display_page/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    //======== List of products =========
    {
      "name": "Ipad Pro",
      "picture": "images/products/1.png",
      "old_price": "600",
      "price": "350",
      "description": "The iPad Pro is a line of iPad tablet computers designed, developed, and marketed by Apple Inc., that runs the iOS and iPadOS mobile operating systems. Its current generation is available in two screen sizes, 11-inch (28 cm) and 12.9-inch (33 cm), each with four options for internal storage capacities: 128 GB, 256 GB, 512 GB, and 1 TB. The iPad Pro, along with the Smart Keyboard and Apple Pencil, are the first iPad products to support the Smart Connector.",
      "brand": "Apple",
    },
    {
      "name": "iPhone 15",
      "picture": "images/products/2.png",
      "old_price": "1500",
      "price": "925",
      "description": "The iPhone 15 is a line of smartphones designed, developed, and marketed by Apple Inc. All generations of the iPhone use Apple's iOS mobile operating system software. The first-generation iPhone was released on June 29, 2007, and multiple new hardware iterations with new iOS releases have been released since.",
      "brand": "Apple",
    },
    {
      "name": "Nintendo Switch",
      "picture": "images/products/4.png",
      "old_price": "230",
      "price": "180",
      "description": "The Nintendo Switch is a video game console developed by Nintendo, released worldwide in most regions on March 3, 2017. It is a hybrid console that can be used as a home console and portable device. Its wireless Joy-Con controllers, with standard buttons and directional analog sticks for user input, motion sensing, and tactile feedback, can attach to both sides of the console to support handheld-style play.",
      "brand": "Nintendo",
    },
    {
      "name": "Playstation 5",
      "picture": "images/products/3.png",
      "old_price": "2400",
      "price": "2000",
      "description": "The PlayStation 5 (PS5) is a home video game console developed by Sony Interactive Entertainment. Announced in 2019 as the successor to the PlayStation 4, the PS5 was released on November 12, 2020, in Australia, Japan, New Zealand, North America, and South Korea, with worldwide release following a week later.",
      "brand": "Sony",
    },
    {
      "name": "Nike ACG Therma-FIT",
      "picture": "images/products/11.png",
      "old_price": "210",
      "price": "170",
      "description": "Nike ACG Therma-FIT is a line of high-performance, water-resistant, and windproof clothing designed to keep you warm and dry in cold and wet weather. It is made of 100% polyester and has a soft fleece lining for warmth and comfort. It has a drawstring hood, a kangaroo pocket, and a ribbed hem and cuffs for a snug fit.",
      "brand": "Nike",
    },
    {
      "name": "Nike SB",
      "picture": "images/products/12.png",
      "old_price": "350",
      "price": "290",
      "description": "Nike SB is a line of clothing and accessories designed for skateboarding. It offers a wide range of apparel including t-shirts, hoodies, pants, and hats, as well as skateboarding shoes. Nike SB clothing is known for its durability, comfort, and stylish designs. Whether you're hitting the skate park or just want to sport a cool streetwear look, Nike SB has you covered.",
      "brand": "Nike",
    },
    {
      "name": "2024 NBA All-Star Weekend",
      "picture": "images/products/9.png",
      "old_price": "300",
      "price": "270",
      "description": "The All-Star Weekend clothing collection is inspired by the annual NBA All-Star Game, showcasing unique designs and styles. It offers a wide range of apparel including jerseys, t-shirts, shorts, and accessories, featuring the logos and branding of the NBA All-Star event. Whether you're a basketball fan or want to show your support for your favorite team, the All-Star Weekend collection is a must-have for any NBA enthusiast.",
      "brand": "NBA",
    },
    { 
      "name": "Jordan Heritage",
      "picture": "images/products/10.png",
      "old_price": "450",
      "price": "380",
      "description": "The Jordan Heritage is a line of clothing and accessories inspired by the iconic Jordan brand. It offers a wide range of apparel including t-shirts, hoodies, pants, and hats, featuring the signature Jumpman logo and stylish designs. Whether you're a basketball fan or simply want to sport a trendy streetwear look, the Jordan Heritage collection has something for you.",
      "brand": "Nike",
    },
    {
      "name": "SB Dunk High Pro",
      "picture": "images/products/8.png",
      "old_price": "1400",
      "price": "1250",
      "description": "The SB Dunk High Pro is a high-top skate shoe designed for impact protection and boardfeel. It has a leather and synthetic upper for durability and support, and a Zoom Air unit in the heel for responsive cushioning. It has a rubber outsole for durable traction, and a flexible rubber outsole for superior boardfeel and grip.",
      "brand": "Nike",
    },
    {
      "name": "Nike Air Force 1",
      "picture": "images/products/5.png",
      "old_price": "2000",
      "price": "1750",
      "description":
          "The Nike Air Force 1 is a low-top basketball shoe designed for performance and style. It has a leather and textile upper for durable comfort, and a Nike Air unit in the heel for lightweight cushioning. It has a rubber outsole for durable traction, and a pivot point for smooth transitions in all directions.",
      "brand": "Nike",
    },
    {
      "name": "Nike Air Jordan 1 Mid SE",
      "picture": "images/products/6.png",
      "old_price": "2500",
      "price": "2300",
      "description":
          "The Nike Air Jordan 1 Mid SE is a mid-top basketball shoe designed for performance and style. It has a leather and synthetic upper for durable comfort, and an Air-Sole unit in the heel for lightweight cushioning. It has a rubber outsole for durable traction, and a flex grooves for natural movement.",
      "brand": "Nike",
    },
    {
      "name": "Nike Air Max Plus Drift",
      "picture": "images/products/7.png",
      "old_price": "4500",
      "price": "4350",
      "description":
          "The Nike Air Max Plus Drift is a low-top lifestyle shoe designed for comfort and style. It has a synthetic and textile upper for durable comfort, and a Max Air unit in the heel for lightweight cushioning. It has a rubber outsole for durable traction, and a flex grooves for natural movement.",
      "brand": "Nike",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //======== Returns the Value of each Product =========
        itemCount: productList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['old_price'],
            productPrice: productList[index]['price'],
            productDescription: productList[index]['description'],
            productBrand: productList[index]['brand'],
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
      this.productPrice,
      this.productDescription,
      this.productBrand});

  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;
  final productDescription;
  final productBrand;

  @override
  Widget build(BuildContext context) {
    return Card(
      //======== Card for each Product =========
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                      //======== Product Details =========
                      productDetailName: productName,
                      productDetailOldPrice: productOldPrice,
                      productDetailPicture: productPicture,
                      productDetailPrice: productPrice,
                      productDetailDescription: productDescription,
                      productDetailBrand: productBrand,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    'Price: \$$productPrice',
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    'Price: \$$productOldPrice',
                    style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Color.fromARGB(255, 125, 34, 28),
                        fontSize: 11,
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
