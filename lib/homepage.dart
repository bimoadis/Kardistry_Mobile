import 'package:flutter/material.dart';
import 'package:kardistry/constants.dart';
import 'package:kardistry/page/detail_list.dart';
import 'package:kardistry/page/list_card.dart';
import 'package:kardistry/page/list_tutor.dart';
import 'package:kardistry/page/view_youtube.dart';
import 'package:kardistry/plants.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


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

  List<String> desc= [
    'For the first time ever Bicycle is printing with a new technology – Cold Foil! This historic deck design has been re-imagined with this new technology to be featured with Cool blues and greens with fantastic gold highlights. You will be dazzled by the gorgeous details in the fabulous new deck! The back as well as faces feature gleaming foil accents including colorful foil court cards and gorgeous gold pips.',
    'A prestigious collaboration on an iconic deck. Our Rider Back collaboration with Chris Ramsay and 1ST is available in both red and blue. Featuring a custom tuck case, a custom 1ST Joker, a blank card, and extra 4 of Spades, this elegant collaboration is a must-have.',
    'A prestigious collaboration on an iconic deck. Our Rider Back collaboration with Chris Ramsay and 1ST is available in both red and blue. Featuring a custom tuck case, a custom 1ST Joker, a blank card, and extra 4 of Spades, this elegant collaboration is a must-have.',
    'Tally-Ho playing cards is featuring a co-branded collaboration with Kings Wild designer Jackson Robinson. This unique and beautiful deck features completely customized faces with a Tally-Ho inspired Ace of Spades.',
  ];



  @override
  Widget build(BuildContext context) {

      Size size = MediaQuery.of(context).size;

      return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: Colors.black54, width: 1.0),
                    ),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(height: 8),
                          ListTile(
                            title: RichText(
                              text: TextSpan(
                                style: TextStyle(fontSize: 16.0, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Hai Cardist, Yuk Mulai belajar!',
                                    style: TextStyle(
                                      color: Constants.primaryColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                RichText(
                                  text: const TextSpan(
                                    style:
                                    TextStyle(fontSize: 15.0, color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Kenalan dulu yuk dengan Cardistry, Kalian dapat mengetahui dan belajar Cardistry disini dengan fitur yang ada.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                // const SizedBox(
                //   height:10 ,
                // ),
                  Container(
                    padding: const EdgeInsets.only(left: 16, bottom: 20, top: 20),
                    child: const Text(
                      'Kartu Tersedia',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),


                  // card list
                  SizedBox(
                    height: size.height * .3,
                    child: ListView.builder(
                        itemCount: 4,
                        //_plantList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: DetailCard(imagePath: imageCard[index], title: nameCard[index], description: desc[index], ),
                                      type: PageTransitionType.bottomToTop));
                            },
                            child: Container(
                              width: 200,
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Constants.primaryColor.withOpacity(.8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 50,
                                    right: 50,
                                    top: 50,
                                    bottom: 50,
                                    child: Image.asset( imageCard[index],
                                        //_plantList[index].imageURL
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    left: 20,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(brandCard[index],
                                          //_plantList[index].category,
                                          style: const TextStyle(
                                            color: Colors.white70,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          nameCard[index],
                                         // _plantList[index].plantName,
                                          style: const TextStyle(
                                            color: Colors.white70,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    right: 20,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text('Lihat',
                                        style: TextStyle(
                                            color: Constants.primaryColor,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),



                  Container(
                    padding: const EdgeInsets.only(left: 16, bottom: 20, top: 20),
                    child: const Text(
                      'Tutorial Cardistry',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: Colors.black54, width: 1.0),
                    ),
                    margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 1.0),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(height: 10),
                          const ListTile(
                            title: Text('Apa itu Cardistry',style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                            subtitle: Text('Cardistry can best be described as "the performance art of card flourishing", and its what happens when you manipulate a deck of playing cards to create a visually pleasing display by cuts, pivots, spins, twirls, and other moves. If you are new to cardistry, check out this great freestyle cardistry demonstration by Andrei Jikh ',
                              maxLines: 2, // membatasi subtitle pada satu baris
                              overflow: TextOverflow.ellipsis,),

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,

                            children: <Widget>[
                              TextButton(
                                child: Text('Baca',
                                  style: TextStyle(
                                    color: Constants.primaryColor,
                                    fontWeight: FontWeight.w600,
                                ),
                                ),
                                onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  ViewYoutubeScreen(videoId: 'https://playingcarddecks.com/blogs/all-in/how-to-get-started-in-cardistry' , title: 'Tentang Cardistry'  ,)),);
                                },
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ));
  }
}


