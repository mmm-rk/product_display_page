import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails(
      {super.key,
      this.productDetailName,
      this.productDetailPicture,
      this.productDetailOldPrice,
      this.productDetailPrice,
      this.productDetailDescription,
      this.productDetailBrand});

  final productDetailName;
  final productDetailPicture;
  final productDetailOldPrice;
  final productDetailPrice;
  final productDetailDescription;
  final productDetailBrand;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productDetailName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("\$${widget.productDetailPrice}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.redAccent))),
                      Expanded(
                          child: Text(
                              "Price: \$${widget.productDetailOldPrice}",
                              style: const TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough))),
                    ],
                  ),
                ),
              ),
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailPicture),
              ),
            ),
          ),
          Row(
            //============= First Row of Buttons =============
            children: <Widget>[
              Expanded(
                //============= Variant Button =============
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: const Text('Variants'),
                              content: const Text('Choose a Variant'),
                              actions: <Widget>[
                                MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: const Text('Close'))
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: const Row(
                    children: <Widget>[
                      Expanded(child: Text('Variant')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                //============= Quantity Button =============
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: const Text('Quantity'),
                              content: const Text('Choose your Quantity'),
                              actions: <Widget>[
                                MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: const Text('Close'))
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: const Row(
                    children: <Widget>[
                      Expanded(child: Text('Qty')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            //============= Second Row of Button =============
            children: <Widget>[
              Expanded(
                //============= Buy Button =============
                child: MaterialButton(
                  onPressed: () {},
                  color: const Color.fromRGBO(17, 138, 96, 1),
                  textColor: Colors.white,
                  padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                  elevation: 0.4,
                  child:
                      const Text('Buy Now', style: TextStyle(fontSize: 18.0)),
                ),
              ),
              IconButton(
                  icon: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {}),
            ],
          ),
          const Divider(color: Color.fromRGBO(17, 138, 96, 1)),
          ListTile(
            title: const Text('Product Details',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(widget.productDetailDescription),
          ),
          const Divider(color: Color.fromRGBO(17, 138, 96, 1)),
          Row(
            children: <Widget>[
              const Padding(
                  padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                  child: Text('Product Name',
                      style: TextStyle(color: Colors.grey))),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(widget.productDetailName),
              ),
            ],
          ),
          
          Row(
            children: <Widget>[
              const Padding(
                  padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                  child: Text('Product Brand',
                      style: TextStyle(color: Colors.grey))),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(widget.productDetailBrand),
              ),
            ],
          ),
          const Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                  child: Text('Product Condition',
                      style: TextStyle(color: Colors.grey))),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text('Good as New'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
