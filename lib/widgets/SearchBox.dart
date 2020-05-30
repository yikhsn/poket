import 'package:flutter/material.dart';
import 'package:kbbi_app/screens/SingleScreen.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    @required TextEditingController inputSearchController,
  })  : _inputSearchController = inputSearchController,
        super(key: key);

  final TextEditingController _inputSearchController;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          print('tapped');
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
    );
  }
}
