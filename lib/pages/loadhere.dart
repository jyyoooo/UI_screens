import 'package:flutter/material.dart';
import 'package:ui_screens/managestore.dart';
import 'package:ui_screens/pages/additionalinfo.dart';
import 'package:ui_screens/pages/delivere_item.dart';
import 'package:ui_screens/pages/homepage.dart';
import 'package:ui_screens/pages/payments.dart';
import 'package:ui_screens/pages/premiumpage.dart';

class LoadHereScreen extends StatefulWidget {
  const LoadHereScreen({super.key});

  @override
  State<LoadHereScreen> createState() => _LoadHereScreenState();
}

int currentIndx = 0;

List<Widget> routes = <Widget>[
  HomePage(),
  PremiumPage(),
  const DeliveredItemPage(),
  const PyamentsPage(),
  const AddtnlInfo(),
  const ManageStore()
];

class _LoadHereScreenState extends State<LoadHereScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: routes[currentIndx],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndx = index;
          });
        },
        currentIndex: currentIndx,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Premium",
            icon: Icon(Icons.star_purple500),
          ),
          BottomNavigationBarItem(
            label: "Orders",
            icon: Icon(Icons.delivery_dining_outlined),
          ),
          BottomNavigationBarItem(
            label: "Payments",
            icon: Icon(Icons.payments_outlined),
          ),
          BottomNavigationBarItem(
            label: "Info",
            icon: Icon(Icons.info_outlined),
          ),
          BottomNavigationBarItem(
            label: "Manage",
            icon: Icon(Icons.manage_accounts),
          )
        ],
      ),
    );
  }
}







