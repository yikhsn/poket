import 'package:flutter/material.dart';
import 'package:kbbi_app/screenviews/HomeScreenView.dart';
import 'package:kbbi_app/screenviews/SearchScreenView.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  // function to move tab view to search tab when seach button pressed
  void moveToSearch() {
    _tabController.animateTo(1);
  }

  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context).settings.name);
    return Scaffold(
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
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          HomeScreenView(moveToSearch),
          SearchScreenView(),
        ],
        controller: _tabController,
      ),
    );
  }
}
