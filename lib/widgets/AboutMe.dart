import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  final String location;
  final String occupation;
  final String relationshipStatus;

  // Constructor with positional parameters
  AboutMeWidget({Key? key, required this.location, required this.occupation, required this.relationshipStatus});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Colors.white24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "À propos de moi ...",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.home, color: Colors.white),
              SizedBox(width: 10),
              Text(location),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.work, color: Colors.white),
              SizedBox(width: 10),
              Text(occupation),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.favorite, color: Colors.white),
              SizedBox(width: 10),
              Text(relationshipStatus),
            ],
          ),
        ],
      ),
    );
  }
}
