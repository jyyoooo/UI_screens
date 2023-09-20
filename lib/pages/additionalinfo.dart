import 'package:flutter/material.dart';

class AddtnlInfo extends StatefulWidget {
  const AddtnlInfo({super.key});

  @override
  State<AddtnlInfo> createState() => _AddtnlInfoState();
}

class _AddtnlInfoState extends State<AddtnlInfo> {
  bool toggl = true;

  void togglr(bool offToggl) {
    setState(() {
      toggl = !toggl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Additional Information'),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(Icons.share_rounded, size: 32),
                  title: const Text('Share Dukaan App'),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_rounded)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.language,
                    size: 35,
                  ),
                  title: const Text('Change Language'),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_rounded)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(Icons.telegram_outlined, size: 35),
                  title: const Text('Share Dukaan App'),
                  trailing: Switch(
                      value: toggl,
                      onChanged: (offToggl) {
                        togglr(offToggl);
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.lock, size: 35),
                  title: Text('Share Dukaan App'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.star, size: 35),
                  title: Text('Share Dukaan App'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.logout, size: 35),
                  title: Text('Share Dukaan App'),
                ),
              ),
            ],
          ),

          Positioned(
            top: 620,
            left: 173,
              child: Column(
            children: [
            const  Text(
                'Version',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              Text('2.4.2', style: TextStyle(color: Colors.grey[600], fontSize: 13,fontWeight: FontWeight.w500))
            ],
          ))
        ],
      ),
    );
  }
}
