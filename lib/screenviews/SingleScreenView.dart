import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/MainTranslation.dart';
import 'package:kbbi_app/tabviews/MainTabView.dart';
import 'package:kbbi_app/tabviews/TurunanTabView.dart';
import 'package:kbbi_app/tabviews/GabunganTabView.dart';
import 'package:kbbi_app/models/word.dart';
import 'package:kbbi_app/helpers/database_helper.dart';

class SingleScreenView extends StatefulWidget {
  @override
  _SingleScreenViewState createState() => _SingleScreenViewState();
}

class _SingleScreenViewState extends State<SingleScreenView>
    with TickerProviderStateMixin {
  TabController _nestedTabController;
  Word word;

  final db = new DatabaseHelper();

  @override
  void initState() async {
    super.initState();

    await getWord();

    _nestedTabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  void getWord() async {
    word = await db.getWord(10);
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
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
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
                      word.entri,
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
