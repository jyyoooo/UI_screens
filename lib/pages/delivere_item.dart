import 'package:flutter/material.dart';

class DeliveredItemPage extends StatelessWidget {
  const DeliveredItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text('Orders'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('May 31, 05:45 PM'),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.blue,
                        size: 15,
                      ),
                      SizedBox.square(
                        dimension: 5,
                      ),
                      Text('Delivered')
                    ],
                  )
                ],
              ),
              const Divider(
                thickness: 1.5,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1 ITEM', style: TextStyle(color: Colors.grey)),
                  Row(
                    children: [
                      Icon(
                        Icons.receipt_long_outlined,
                        color: Colors.blue,
                        size: 22,
                      ),
                      SizedBox.square(
                        dimension: 5,
                      ),
                      Text(
                        'RECEIPT',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/digital-food-product-label-design-500x500.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                title: const Text('Explore | Men | White'),
                subtitle: const Text('1 piece \n Size: XL'),
                isThreeLine: true,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.looks_one_outlined,
                        color: Color.fromARGB(255, 134, 209, 244),
                      ),
                      Text(' x 799')
                    ],
                  ),
                  SizedBox(),
                  Text(
                    '799',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  )
                ],
              ),
              const Divider(
                thickness: 1.5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Item Total'), Text('799')],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery'),
                  Text(
                    'FREE',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Grand Total',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                  Text('799',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const Divider(
                thickness: 1.5,
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('CUSTOMER DETAILS',
                      style: TextStyle(color: Colors.grey)),
                  IconButton(
                      icon: const Icon(Icons.share_rounded, color: Colors.blue),
                      onPressed: () {},
                      tooltip: 'SHARE'
                      // Row(
                      //   children: [

                      // SizedBox.square(
                      //   dimension: 5,
                      // ),
                      // Text('SHARE', style: TextStyle(color: Colors.blue)),
                      //   ],
                      // ),
                      ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jyothish',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        Text('+91 6282983296')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.call, color: Colors.blue, size: 30),
                        SizedBox.square(
                          dimension: 17,
                        ),
                        Icon(
                          Icons.telegram,
                          size: 30,
                        )
                      ],
                    ),
                  ]),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Address',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      Text('Keyiparambil house\nNayarambalam PO')
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('City',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        Text('Ernakulam')
                      ],
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pincode',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                        Text('682509')
                      ],
                    ),
                  ]),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payment',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      Text('Online')
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 197, 244, 199)),
                      height: 25,
                      width: 60,
                      child: const Center(
                          child: Text(
                        'PAID',
                        style: TextStyle(
                            color: Color.fromARGB(255, 26, 153, 30),
                            fontWeight: FontWeight.w600),
                      )))
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const Divider(
                thickness: 1.5,
              ),
              const SizedBox(
                height: 7,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CUSTOMER DETAILS',
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('State',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                          Text('Kerala')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                          Text('jyothish.ka25@gmail.com'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blueAccent)),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                      label: const Text('SHARE RECEIPT')))
            ],
          ),
        ),
      ),
    );
  }
}
