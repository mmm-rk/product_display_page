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
      appBar: AppBar( //======== AppBar =========
        backgroundColor: const Color.fromRGBO(67, 104, 80, 1),
        title: const Text('LalaBuys Thrift Shop'),
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
      drawer: Drawer( //======== Drawer/Side bar =========
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Joseph Mark Padayon'),
              accountEmail: const Text('joseph.markp@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Color.fromRGBO(173, 188, 159, 1),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(17, 138, 96, 1),
              ),
            ),
            InkWell( //======== Drawer Items/Buttons =========
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
                leading: Icon(Icons.shopping_basket,
                color: Colors.orangeAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard,
                color: Colors.blueAccent),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite,
                color: Colors.redAccent,),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Color.fromRGBO(93, 175, 17, 1),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('About Us'),
                leading: Icon(
                  Icons.help,
                  color: Color.fromRGBO(93, 175, 17, 1),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView( //======== Body =========
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Categories'),
          ),

          const HorizontalList(), //========== Horizontal List View of Categories ==========
          const Padding(
            padding: EdgeInsets.only(top: 45, left: 10, right: 10),
            child: Text('Available Products'),
          ),

          Container(
            height: 700,
            child: const Products(), //========= Grid View of Products ==========
          ),
        ],
      ),
    );
  }
}
