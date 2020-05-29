import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/SearchBox.dart';

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({
    Key key,
    @required TextEditingController inputSearchController,
  })  : _inputSearchController = inputSearchController,
        super(key: key);

  final TextEditingController _inputSearchController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Theme.of(context).primaryColor,
          height: 80.0,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SearchBox(inputSearchController: _inputSearchController)
            ],
          ),
        ),
      ],
    );
  }
}
