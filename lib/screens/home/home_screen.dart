import 'package:flutter/material.dart';
import 'package:tpclone_flutter/core/appbar/tp_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: TPAppbar(
          tabBar: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "REVIEW",
              ),
              Tab(
                text: "ACTIVE",
              ),
              Tab(
                text: "INACTIVE",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
