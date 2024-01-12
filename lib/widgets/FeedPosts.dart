import 'package:flutter/material.dart';

class FeedPostsWidget extends StatelessWidget {
  final List<List<dynamic>> postsList;

  FeedPostsWidget({Key? key, required this.postsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Divider(
              color: Colors.white24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Feed",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ...postsList.map((post) => Card(
            color: Colors.white12,
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.white),
                    title: Text(
                      post[0],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      color: Colors.white24,
                    ),
                  ),
                  Image.asset(post[1]),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      post[2],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.favorite, color: Colors.red),
                        SizedBox(width: 8),  // Un espace entre l'icône et le texte
                        Text(
                          post[3].toString() + ' likes',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.chat, color: Colors.white),
                        SizedBox(width: 8),  // Un espace entre l'icône et le texte
                        Text(
                          post[4].toString() + ' commentaires',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
