import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  final Function moveToSearch;

  SearchSection(this.moveToSearch);

  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 200.0,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  'POKET',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Aplikasi Kamus Besar Bahasa Indonesia Edisi 5',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
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
