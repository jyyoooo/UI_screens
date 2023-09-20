import 'package:flutter/material.dart';

import 'package:simple_progress_indicators/simple_progress_indicators.dart';

class PyamentsPage extends StatefulWidget {
  const PyamentsPage({super.key});

  @override
  State<PyamentsPage> createState() => _PyamentsPageState();
}

String defaultMethodItem = 'Online Payments';
String paymentProfileItem = 'Bank Account';
String overviewItem = 'Lifetime';

class _PyamentsPageState extends State<PyamentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        title: const Text('Payments'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.info_outline_rounded))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transaction Limit',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      const Text(
                          'A free limit up to which you will receive the online payments directly in your bank'),
                      const SizedBox(
                        height: 10,
                      ),
                      const ProgressBar(
                        height: 5,
                        value: .3,
                        color: Colors.blue,
                        backgroundColor: Color.fromARGB(255, 234, 231, 231),
                        width: 400,
                      ),
                      const Text('36,668 left out of 50,000'),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {},
                          child: const Text(
                            'Increase Limit',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Default Method',
                  style: TextStyle(fontSize: 16),
                ),
                DropdownButton(
                  value: defaultMethodItem,
                  items: ['Online Payments', 'Online', 'Payments']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 126, 126, 126),
                              fontWeight: FontWeight.normal)),
                    );
                  }).toList(),
                  onChanged: (String? newItem) {
                    setState(() {
                      defaultMethodItem = newItem!;
                    });
                  },
                  underline: Container(),
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Payment Profiile',
                  style: TextStyle(fontSize: 16),
                ),
                DropdownButton(
                  value: paymentProfileItem,
                  items: ['Bank Account', 'UPI', 'Credit Card']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 118, 118, 118),
                            fontWeight: FontWeight.normal),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newItem) {
                    setState(() {
                      paymentProfileItem = newItem!;
                    });
                  },
                  underline: Container(),
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Payments Overview',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                DropdownButton(
                  value: overviewItem,
                  items: ['Lifetime', '6 Months', 'Last Month']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 118, 118, 118),
                            fontWeight: FontWeight.normal),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newItem) {
                    setState(() {
                      overviewItem = newItem!;
                    });
                  },
                  underline: Container(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 245, 147, 0),
                  ),
                  height: 100,
                  width: 170,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('AMOUNT ON HOLD',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '₹0',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  height: 100,
                  width: 170,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('AMOUNT RECEIVED',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '₹32,000',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Transactions',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceChip(
                    labelStyle: TextStyle(color: Color.fromARGB(221, 0, 0, 0)),
                    disabledColor: Color.fromARGB(255, 215, 215, 215),
                    label: Text('On hold'),
                    selected: false),
                ChoiceChip(
                    selectedShadowColor: Colors.grey,
                    labelStyle: TextStyle(color: Colors.white),
                    selectedColor: Color.fromARGB(255, 39, 139, 221),
                    label: Text(
                      'Payouts',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    selected: true),
                ChoiceChip(
                    labelStyle: TextStyle(color: Colors.black87),
                    disabledColor: Color.fromARGB(255, 218, 218, 218),
                    label: Text('Refunds'),
                    selected: false),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
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
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Product name here',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text('₹387.4',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Apr 8, 9:45 AM',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            )),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.circle,
                                              color: Colors.green,
                                              size: 12,
                                            ),
                                            SizedBox.square(
                                              dimension: 5,
                                            ),
                                            Text('Successful',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                       const  SizedBox(height: 5,),
                      const Text('₹387.4 desposited to 13876123598',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400)),
                            const  SizedBox(height: 10,)
                    ],
                  ),
                ],
              ),
              itemCount: 10,
            )
          ]),
        ),
      ),
    );
  }
}
