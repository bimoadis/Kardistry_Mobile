import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:core';

import 'package:kardistry/model/cards.dart';
import 'package:kardistry/constants.dart';
import 'package:kardistry/page/detail_list.dart';

class ListCard extends StatefulWidget {
  List<String> brandCard= [
    'Bicycle',
    'Bicycle',
    'Bicycle',
    'Tally Ho',
  ];

  List<String> imageCard= [
    'assets/images/By_Peacock.png',
    'assets/images/Bicycle_1st_Blue_Hero.png',
    'assets/images/Bicycle_1st_Red.png',
    'assets/images/Tally_Ho_Jackson_Robinson.png',
  ];

  List<String> nameCard= [
    'Peacock Playing\nCards',
    '1ST Rider Back\nBlue',
    '1ST Rider Back\nRed',
    'Kings Wild\nWhite Playing Cards',
  ];

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 1.0),
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 8),
                      const ListTile(
                        leading: Icon(Icons.play_arrow, color: Color.fromARGB(255, 28, 140, 36), size: 40,),
                        title: Text('baksoo'),
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
                ),
              ),




            ],
          )
      ),
    );
  }


}

// Widget _buildArticleItem(BuildContext context, Cards article) {
//   return ListTile(
//     contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//     leading: Image.network(
//       article.image,
//       width: 100,
//     ),
//     title: Text(article.name),
//     subtitle: Text(article.desc),
//     onTap: () {
//       // Navigator.push(
//       //     context,
//       //     MaterialPageRoute(
//       //         builder: (context) => DetailCard(
//       //               article: article,
//       //             )));
//     },
//   );
// }
