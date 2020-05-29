import 'package:flutter/material.dart';
import 'package:kbbi_app/screens/ExploreScreen.dart';

class MenuCategory extends StatelessWidget {
  MenuCategory(this.cateogryName);

  final String cateogryName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExploreScreen(),
            ),
          );
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
              cateogryName,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black45,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
