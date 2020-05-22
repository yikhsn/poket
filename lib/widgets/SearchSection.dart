import 'package:flutter/material.dart';
import 'package:kbbi_app/screens/SingleScreen.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key key,
    @required TextEditingController inputSearchController,
  })  : _inputSearchController = inputSearchController,
        super(key: key);

  final TextEditingController _inputSearchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 200.0,
      width: MediaQuery.of(context).size.width,
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
            margin: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            padding: EdgeInsets.only(left: 10.0),
            height: 60.0,
            child: TextField(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingleScreen()),
                );
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
