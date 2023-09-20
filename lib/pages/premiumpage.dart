import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PremiumPage extends StatelessWidget {
  PremiumPage({super.key});

  final List<FeatureItem> features = [
    FeatureItem(
      icon: Icons.public,
      title: 'Custom Domain name',
      description:
          'Get your custom domain and build\nyour brand on the internet.',
    ),
    FeatureItem(
      icon: Icons.verified,
      title: 'Verified Seller Badge',
      description:
          'Get green verified badge under your\nstore name and build trust.',
    ),
    FeatureItem(
      icon: Icons.computer,
      title: 'Dukaan for PC',
      description:
          'Access all the exclusive premium\nfeatures on Dukaan for PC.',
    ),
    FeatureItem(
      icon: Icons.support_agent,
      title: 'Priority support',
      description:
          'Get your questions resolved with our\npriority customer support',
    ),
  ];

  final YoutubePlayerController _ytController = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
            'https://youtu.be/661gHsdickA?si=qaVyexMg4JlUi9Ct')
        .toString(),
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
          elevation: 0,
          title: const Text('Dukaan Premium'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 230,
                  color: Colors.white,
                  child: SizedBox(
                      child: Stack(children: [
                    Container(
                      color: Colors.blueAccent,
                      width: 400,
                      height: 100,
                    ),
                    Positioned(
                        top: 40,
                        left: 20,
                        child: Material(
                          elevation: 2,
                          borderRadius: BorderRadius.circular(10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox(
                                width: 355,
                                height: 180,
                                child: Container(
                                  color: Colors.white,
                                  child: const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10,),
                                        SizedBox(
                                          child: Image(
                                            width: 200,
                                            height: 50,
                                            image: AssetImage(
                                                'assets/images/dukaan-logo.png'),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                            'Get Dukaan Premium for just 4,999/year',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.center),
                                            SizedBox(height: 5,),
                                        Text(
                                            'All the advanced features for scaling your business',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        )),
                  ]))),
              // STACK END

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Features',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    Column(
                      children: [
                        for (final feature in features)
                          FeatureListItem(feature: feature),
                      ],
                    ),
                    const SizedBox(
                        height: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: Colors.grey),
                        )),
                    const Text('What is Dukaan Premium?',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 8,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        // width: 380,
                        // height: 250,
                        child: Center(
                          child: YoutubePlayer(
                            controller: _ytController,
                            liveUIColor: Colors.white,
                          ),
                        )),

                    // CONTENT SPACING
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Frequently asked questions',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 8,
                    ),

                    // EXPASNSION TILE
                    const ExpansionTile(
                      title: Text(
                          'What type of businesses can use Dukaan Premium?'),
                      children: [
                        Text(
                            'Dukaan caters to a wide variety od selllers. Be it a small grocert store or blah blahblah')
                      ],
                    ),
                    const ExpansionTile(
                      title: Text('Refund policy'),
                      children: [
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ')
                      ],
                    ),
                    const ExpansionTile(
                      title: Text('Will there be automatic charge?'),
                      children: [
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ')
                      ],
                    ),
                    const ExpansionTile(
                      title: Text('What payment methods do u offer?'),
                      children: [
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ')
                      ],
                    ),
                    const ExpansionTile(
                      title: Text('What are the terms of use'),
                      children: [
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ')
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // CONTACT HELP
                    const Text('Need help? Get in touch',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey)),
                          height: 100,
                          width: 150,
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(Icons.chat),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Live Chat')
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey)),
                          height: 100,
                          width: 150,
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(Icons.call),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Phone Call'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text('Select Domain')),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('Get Premium'))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureItem {
  final IconData icon;
  final String title;
  final String description;

  FeatureItem(
      {required this.icon, required this.title, required this.description});
}

class FeatureListItem extends StatelessWidget {
  final FeatureItem feature;

  const FeatureListItem({required this.feature});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Icon(
            feature.icon,
            size: 40,
            color: Colors.lightBlue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
          child: SizedBox(
            width: 280,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  feature.title,
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w400),
                ),
                Text(
                  feature.description,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
