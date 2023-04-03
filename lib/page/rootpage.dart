import 'package:flutter/material.dart';
import 'package:kardistry/constants.dart';
import 'package:kardistry/homepage.dart';
import 'package:kardistry/page/list_card.dart';
import 'package:kardistry/page/list_tutor.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _bottonNavbarIndex = 0;

  //list halaman
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ListTutor(),
    // ListTutor(),
  ];
  //
  // //list icon halaman
  // List<IconData> iconList = [
  //   Icons.home,
  //   Icons.list,
  //   Icons.person,
  // ];

  //List title halaman
  List<String> titleList = [
    'Kardistry',
    'Tutor',
    // 'List',
  ];
  void _onTabTapped(int index) {
    setState(() {
      _bottonNavbarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList[_bottonNavbarIndex],
              style: TextStyle(
                color: Constants.blackColor,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            Icon(
              Icons.notifications,
              color: Constants.blackColor,
              size: 30.0,
            )
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_bottonNavbarIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _bottonNavbarIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: '',

            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.list),
            //   label: '',
            //
            // ),
          ],
          selectedItemColor: Constants.primaryColor,

          // splashColor: Constants.primaryColor,
          // activeColor: Constants.primaryColor,
          // inactiveColor: Colors.black.withOpacity(.5),
          //
          // icons: iconList,
          // activeIndex: _bottonNavbarIndex,
          // // gapLocation: GapLocation.end,
          // notchSmoothness: NotchSmoothness.softEdge,
          onTap: _onTabTapped,
      ),
    );
  }
}
