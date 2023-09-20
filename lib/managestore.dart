import 'package:flutter/material.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Manage Store'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          color: Colors.white38,
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.5),
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.orange,
                        ),
                        height: 40,
                        width: 40,
                        child: const Icon(Icons.design_services),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Marketing\nDesigns',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.green,
                        ),
                        height: 40,
                        width: 40,
                        child: const Icon(Icons.payment),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Online\nPayments',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.amber,
                        ),
                        height: 40,
                        width: 40,
                        child: const Icon(Icons.discount),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Discount\nCoupons',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 37, 166, 136),
                        ),
                        height: 40,
                        width: 40,
                        child: const Icon(Icons.people),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('My\nCustomers',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey,
                        ),
                        height: 40,
                        width: 40,
                        child: const Icon(Icons.qr_code),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Store QR\nCode',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.purpleAccent,
                        ),
                        height: 40,
                        width: 40,
                        child: const Icon(Icons.attach_money),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Extra\nCharges',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.pink,
                            ),
                            height: 40,
                            width: 40,
                            child: const Icon(Icons.note),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              height: 25,
                              width: 50,
                              child: const Center(
                                  child: Text(
                                'NEW',
                                style: TextStyle(color: Colors.white),
                              )))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Order\nForm',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
