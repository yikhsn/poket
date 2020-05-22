import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/SearchBox.dart';

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
          SearchBox(inputSearchController: _inputSearchController)
        ],
      ),
    );
  }
}
