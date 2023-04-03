import 'package:flutter/material.dart';
import 'package:kardistry/constants.dart';
import 'package:kardistry/page/view_youtube.dart';

class ListTutor extends StatefulWidget {
  const ListTutor({super.key});



  @override
  _ListTutorState createState() => _ListTutorState();
}

class _ListTutorState extends State<ListTutor> {

  List<String> titleTutorial= [
    'Tutorial Grips',
    'One-handed Cuts',
    'One Card Move',
  ];

  List<String> linkTutorial= [
    'https://www.youtube.com/playlist?list=PLnXRsC9wPzlKhHxNB1jLuxU_cfJbrHQL0',
    'https://www.youtube.com/playlist?list=PLnXRsC9wPzlIqaazNAVUkz5frEXv4TZah',
    'https://www.youtube.com/playlist?list=PLnXRsC9wPzlKKFTG1gweJnX2J61Y_QoxL',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 1.0),
            child: Card(
              color: Constants.primaryColor.withOpacity(.8),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 10),
                  ListTile(
                    title: Text(
                        titleTutorial[index],
                        style: TextStyle(color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        RichText(
                          text:const TextSpan(
                            style: TextStyle(fontSize: 15.0, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Grip merupakan hal paling dasar dari belajar Cardistry, jadi mari mulai pelajari Grips terlebih dahulu',
                                style: TextStyle(fontSize: 14, color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          primary: Colors.white,
                          onPrimary: Constants.primaryColor,
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  ViewYoutubeScreen(videoId: linkTutorial[index], title: titleTutorial[index] ,)),);
                        },
                        child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text('Pelajari', style: TextStyle(fontFamily: "Poppins", fontSize: 13, fontWeight: FontWeight.bold),)
                        ),
                      ),
                      const SizedBox(width: 25),
                    ],
                  ),
                  const SizedBox(height: 8)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}