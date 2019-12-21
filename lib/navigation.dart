import 'package:app/homepage.dart';
import 'package:app/library.dart';
import 'package:app/upload.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int pageIndex = 0;

  final Upload _uploadPage = Upload();
  final Library _libraryPage = Library();
  final Homepage _homepage = Homepage();

  Widget _showPage = Homepage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homepage;
        break;
      case 1:
        return _uploadPage;
        break;
      case 2:
        return _libraryPage;
        break;
      default:
        return _homepage;
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: pageIndex,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home, size: 30, color: Color(0xFF1A2A4F)),
            Icon(Icons.cloud, size: 30, color: Color(0xFF1A2A4F)),
            Icon(Icons.book, size: 30, color: Color(0xFF1A2A4F)),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 250),
          onTap: (tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          child: _showPage,
        ));
  }
}
