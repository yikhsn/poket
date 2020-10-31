import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/MainTranslation.dart';
import 'package:kbbi_app/tabviews/MainTabView.dart';
import 'package:kbbi_app/tabviews/TurunanTabView.dart';
import 'package:kbbi_app/tabviews/GabunganTabView.dart';
import 'package:kbbi_app/models/word.dart';
import 'package:kbbi_app/helpers/database_helper.dart';

class SingleScreenView extends StatefulWidget {
  final int eid;

  SingleScreenView(this.eid);

  @override
  _SingleScreenViewState createState() => _SingleScreenViewState();
}

class _SingleScreenViewState extends State<SingleScreenView>
    with TickerProviderStateMixin {
  TabController _nestedTabController;
  // List words = [];
  List<Word> listWord = [];
  Word word;

  final db = new DatabaseHelper();

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

  Future<List<Word>> getListWord() async {
    List<Word> resultList = [];
    List words = [];
    words = await db.getWords(widget.eid);

    for (int i = 0; i < words.length; i++) {
      Word word_single = Word.map(words[i]);

      resultList.add(word_single);
    }
    return resultList;
  }

  Future<Word> getWords() async {
    List words = [];
    Word word;
    words = await db.getWords(widget.eid);

    if (words.length > 0) {
      word = new Word.fromMap(words.first);
    }
    return word;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FutureBuilder(
            builder: (BuildContext context, AsyncSnapshot<Word> snapshot) {
              print(snapshot.data);
              Widget children;
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  children = MainTranslation(snapshot.data);
                } else if (snapshot.hasError) {
                  children = Text('Tidak ada data');
                } else {
                  children = Text('Tidak ada data');
                }
              } else {
                children = Text('Tidak ada data');
              }
              return children;
            },
            future: getWords(),
          ),
          // FutureBuilder(child: MainTranslation(word)),
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
                      'Main',
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
                Container(
                  child: FutureBuilder(
                    builder: (BuildContext context,
                        AsyncSnapshot<List<Word>> snapshot) {
                      Widget children;
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasData) {
                          children = MainTabView(snapshot.data);
                        } else if (snapshot.hasError) {
                          children = Text('Tidak ada data');
                        }
                      } else {
                        children = Text('Tidak ada data');
                      }
                      return children;
                    },
                    future: getListWord(),
                  ),
                ),
                Container(
                  child: FutureBuilder(
                    builder:
                        (BuildContext context, AsyncSnapshot<Word> snapshot) {
                      Widget children;
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasData) {
                          children = TurunanTabView(snapshot.data);
                        } else if (snapshot.hasError) {
                          children = Text('Tidak ada data');
                        }
                      } else {
                        children = Text('Tidak ada data');
                      }
                      return children;
                    },
                    future: getWords(),
                  ),
                ),
                Container(
                  child: FutureBuilder(
                    builder:
                        (BuildContext context, AsyncSnapshot<Word> snapshot) {
                      Widget children;
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasData) {
                          children = GabunganTabView(snapshot.data);
                        } else if (snapshot.hasError) {
                          children = Text('Tidak ada data');
                        }
                      } else {
                        children = Text('Tidak ada data');
                      }
                      return children;
                    },
                    future: getWords(),
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
