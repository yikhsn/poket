import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/MainTranslation.dart';
import 'package:kbbi_app/widgets/MainTabView.dart';
import 'package:kbbi_app/widgets/TurunanTabView.dart';
import 'package:kbbi_app/widgets/GabunganTabView.dart';

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

    _nestedTabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              child: TabBar(
                controller: _nestedTabController,
                indicatorColor: Colors.red,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black54,
                indicatorWeight: 2.0,
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'Arti Kata',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Turunan',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Gabungan',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _nestedTabController,
              children: <Widget>[
                MainTabView(),
                TurunanTabView(),
                GabunganTabView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
