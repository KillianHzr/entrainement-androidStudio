import 'package:flutter/material.dart';

class FriendsListWidget extends StatelessWidget {
  final List<String> imageUrls;

  FriendsListWidget({required this.imageUrls});

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
                "Amis",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: imageUrls.map((url) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 115,
                  height: 175,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.white12,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(url),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
