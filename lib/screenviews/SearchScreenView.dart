import 'package:flutter/material.dart';
import 'package:kbbi_app/models/word.dart';
import 'package:kbbi_app/widgets/ResultList.dart';
import 'package:kbbi_app/helpers/database_helper.dart';

class SearchScreenView extends StatefulWidget {
  @override
  _SearchScreenViewState createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreenView> {
  TextEditingController _inputSearchController = new TextEditingController();
  List _resultRaw = [];
  List<Word> _resultList = [];

  @override
  void dispose() {
    super.dispose();
    _inputSearchController.dispose();
  }

  final db = new DatabaseHelper();

  void searchData(String char) async {
    setState(() {
      _resultList = [];
    });

    if (char != '') {
      _resultRaw = await db.searchDataLike(char);

      for (int i = 0; i < _resultRaw.length; i++) {
        Word word = Word.map(_resultRaw[i]);

        setState(() {
          _resultList.add(word);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 0, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                    ),
                  ),
                  Container(
                    height: 80.0,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: Offset(0, 10.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.only(left: 10.0),
                          height: 60.0,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                            onChanged: (newText) {
                              searchData(newText);
                            },
                            controller: _inputSearchController,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.black38,
                                size: 25.0,
                              ),
                              border: InputBorder.none,
                              labelText: 'Cari Disini...',
                              fillColor: Colors.white,
                              hintStyle: TextStyle(color: Colors.black38),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView.builder(
                  itemCount: _resultList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ResultList(_resultList[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
