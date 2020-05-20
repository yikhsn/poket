import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/MainTranslation.dart';
import 'package:kbbi_app/widgets/DetailTranslation.dart';
import 'package:kbbi_app/widgets/MainTabView.dart';

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          MainTranslation(),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Container(
                child: TabBar(
                  // indicatorPadding: EdgeInsets.all(20.0),
                  controller: _nestedTabController,
                  // indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.black54,
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(
                      text: "One",
                    ),
                    Tab(
                      text: "Two",
                    ),
                    Tab(
                      text: "Three",
                    ),
                    Tab(
                      text: "Four",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _nestedTabController,
              children: <Widget>[
                MainTabView(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.orangeAccent,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.greenAccent,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.indigoAccent,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
