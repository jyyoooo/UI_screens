import 'package:flutter/material.dart';

class Product {
  String name;
  bool isInStock;

  Product({required this.name, required this.isInStock});
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products = List.generate(
      10, (index) => Product(name: 'Product $index', isInStock: true));

  bool isInStock = true;

  void toggleInStock(int index, bool newValue) {
    setState(() {
      products[index].isInStock = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.add_box_rounded),
            ),
            Tab(
              icon: Icon(Icons.category),
            ),
          ]),
          title: const Text('Catalogue'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView.builder(
            itemBuilder: (context, index) => Center(
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/digital-food-product-label-design-500x500.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Product name here',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.more_vert))
                                  ],
                                ),
                                const Text('\$100',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'In Stock',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    Switch(
                                        value: products[index].isInStock,
                                        onChanged: (switchTo) {
                                          toggleInStock(index, switchTo);
                                        })
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 0,
                        thickness: .7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const SizedBox(
                              child: Row(
                                children: [
                                  Icon(Icons.share),
                                  Text('Share Product')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
