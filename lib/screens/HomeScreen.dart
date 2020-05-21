import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/NestedTabBarView.dart';
import 'package:kbbi_app/screens/SingleScreen.dart';

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
      backgroundColor: Colors.white,
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
          Center(
            child: Text("Email"),
          ),
          Center(
            child: Text("Email"),
          ),
          Center(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingleScreen()),
                );
              },
              child: Text('Go to Single'),
            ),
          )
        ],
        controller: _tabController,
      ),
    );
  }
}
