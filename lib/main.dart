import 'package:firstappmds/widgets/AboutMe.dart';
import 'package:firstappmds/widgets/FeedPosts.dart';
import 'package:firstappmds/widgets/FriendsList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Killian HERZER',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
            headline1: TextStyle(color: Colors.white),
            headline2: TextStyle(color: Colors.white),
            headline3: TextStyle(color: Colors.white),
            headline4: TextStyle(color: Colors.white),
            headline5: TextStyle(color: Colors.white),
            headline6: TextStyle(color: Colors.white),
            subtitle1: TextStyle(color: Colors.white),
            subtitle2: TextStyle(color: Colors.white),
            caption: TextStyle(color: Colors.white),
            button: TextStyle(color: Colors.white),
            overline: TextStyle(color: Colors.white),
          ),
          scaffoldBackgroundColor: Colors.black54,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black45),
          useMaterial3: true,
        ),
//      home: const MyHomePage(title: 'Flutter jfjf Home Page'),
        home: const BasicUI());
  }
}

class BasicUI extends StatelessWidget {
  const BasicUI({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = ["images/charles.jpg", "images/abdel.jpg", "images/jeje.jpg", "images/elon.jpg", "images/mark.jpg"];
    List<List<dynamic>> postsList = [
      ['Valentin Folliguet', 'images/charles.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt', 196, 14],
      ['Valentin Folliguet', 'images/jeje.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt', 230, 1474],
      ['Valentin Folliguet', 'images/abdel.jpg', 'Lorem ipsum dolor.', 6, 1]
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 3,
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: SingleChildScrollView (
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  height: 200,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/banner.jpg"),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage("images/profilepic.jpg"),
                                fit: BoxFit.cover,
                                alignment: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Obé 🪐",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          flex: 4,
                          child: TextButton(
                            style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size.fromHeight(50)),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.lightBlue),
                              side: MaterialStateProperty.all(
                                  BorderSide(color: Colors.lightBlue, width: 2)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Modifier le profil',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          )),
                      Spacer(),
                      Expanded(
                          flex: 2,
                          child: TextButton(
                            style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size.fromHeight(50)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.lightBlue),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              '✛',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            AboutMeWidget(
              location: "Marseille",
              occupation: "Étudiant",
              relationshipStatus: "Célibataire",
            ),
            FriendsListWidget(
                imageUrls: imageUrls
            ),
            FeedPostsWidget(
                postsList: postsList
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
