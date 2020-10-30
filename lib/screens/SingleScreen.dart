import 'package:flutter/material.dart';
import 'package:kbbi_app/models/word.dart';
import 'package:kbbi_app/screenviews/SingleScreenView.dart';

class SingleScreen extends StatefulWidget {
  final String id_entri;

  SingleScreen(this.id_entri);

  @override
  _SingleScreenState createState() => _SingleScreenState();
}

class _SingleScreenState extends State<SingleScreen>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0), // here the desired height
        child: AppBar(
          elevation: 0.0,
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: SingleScreenView(widget.id_entri),
      ),
    );
  }
}
