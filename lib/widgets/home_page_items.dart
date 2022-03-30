import 'package:flutter/material.dart';
import 'package:mental_health_app/screens/home_page_screen_categories.dart';

class HomePageItem extends StatelessWidget {
  final String title;
  final Color color;
  final Icon icon;
  final String call;

  HomePageItem(this.title, this.color, this.icon, this.call);

  void _selectHome(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      HomePageCategoriesScreen.routeName,
      arguments: {
        'title': title,
        'icon': icon,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectHome(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$title ',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      WidgetSpan(
                        child: icon,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              Text(
                call,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
