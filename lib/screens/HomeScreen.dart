import 'package:flutter/material.dart';
import 'package:kbbi_app/screens/SingleScreen.dart';
import 'package:kbbi_app/screenviews/HomeScreenView.dart';
import 'package:kbbi_app/screenviews/SearchScreenView.dart';
import 'package:kbbi_app/screenviews/BookmarkScreenView.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'KBBI V',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 30.0,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      //   elevation: 0.0,
      // ),
      backgroundColor: Colors.red,
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.red,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black54,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
            Tab(
              icon: Icon(Icons.bookmark),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          HomeScreenView(),
          SearchScreenView(),
          BookmarkScreenView(),
        ],
        controller: _tabController,
      ),
    );
  }
}
