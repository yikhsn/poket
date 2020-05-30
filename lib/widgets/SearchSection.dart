import 'package:flutter/material.dart';
import 'package:kbbi_app/widgets/SearchBox.dart';
import 'package:kbbi_app/screenviews/SearchScreenView.dart';

class SearchSection extends StatelessWidget {
  final Function moveToSearch;

  SearchSection(this.moveToSearch);

  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 200.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: moveToSearch,
            child: Container(
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
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Cari disini...',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black26,
                    size: 25.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
