import 'package:flutter/material.dart';
import 'package:product_display_page/horizontal_view.dart';
import 'package:product_display_page/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(210, 69, 69, 1),
        title: const Text('Sample Text'),
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Joseph Mark Padayon'),
              accountEmail: const Text('joseph.markp@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Color.fromRGBO(230, 186, 163, 1),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(169, 68, 56, 1),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Color.fromRGBO(210, 69, 69, 1),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('About Us'),
                leading: Icon(
                  Icons.help,
                  color: Color.fromRGBO(210, 69, 69, 1),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Categories'),
          ),

          //Horizontal List View of Categories
          const HorizontalList(),
          const Padding(
            padding: EdgeInsets.only(top: 45, left: 10, right: 10),
            child: Text('Recent Products'),
          ),

          //Grid View of Products
          Container(
            height: 700,
            child: const Products(),
          ),
        ],
      ),
    );
  }
}
