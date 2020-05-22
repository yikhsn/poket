import 'package:flutter/material.dart';

class MenuCategory extends StatelessWidget {
  const MenuCategory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print('menu clicked');
        },
        child: Container(
          decoration: BoxDecoration(
            // color: Theme.of(context).accentColor,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350],
                blurRadius: 20.0,
                offset: Offset(0, 10.0),
              )
            ],
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.all(5.0),
          height: 60.0,
          child: Center(
            child: Text(
              'Kategori 1',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
