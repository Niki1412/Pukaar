import 'package:flutter/material.dart';
import 'package:mental_health_app/widgets/sleep.dart';

class HomePageCategoriesScreen extends StatefulWidget {
  static const routeName = '/home-page-screen-categories';

  @override
  _HomePageCategoriesScreenState createState() =>
      _HomePageCategoriesScreenState();
}

class _HomePageCategoriesScreenState extends State<HomePageCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final homeTitle = routeArgs['title'].toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(homeTitle),
        backgroundColor: const Color.fromRGBO(58, 12, 163, 1),
      ),
      body: Column(
        children: <Widget>[
          if (homeTitle == 'Sleep') Sleep(),
        ],
      ),
    );
  }
}
