import 'package:flutter/material.dart';
import 'package:kardistry/constants.dart';
import 'package:kardistry/page/detail_list.dart';

class BuildCardsItem extends StatelessWidget {
  final String title;
  final String images;
  final String desc;

  const BuildCardsItem(this.title, this.images, this.desc, {
    super.key,});




  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 8),
          const ListTile(
            leading: Icon(Icons.play_arrow, color: Color.fromARGB(255, 28, 140, 36), size: 40,),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              TextButton(
                child: Text('LISTEN',
                  style: TextStyle(
                    color: Constants.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailCard(imagePath: 'assets/images/logo.png', title: 'Bicycle Playing Card', description: 'A prestigious collaboration on an iconic deck. Our Rider Back collaboration with Chris Ramsay and 1ST is available in both red and blue. Featuring a custom tuck case, a custom 1ST Joker, a blank card, and extra 4 of Spades, this elegant collaboration is a must-have.')),
                );},
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}