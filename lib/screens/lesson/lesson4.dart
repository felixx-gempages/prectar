import 'package:prectar/index.dart';

class Lesson4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: _HomePages(), routes: <String, WidgetBuilder>{
      "/lesson4/secondpage": (BuildContext context) => _SecondPages()
    });
  }
}

class _HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 4 Homepage"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.favorite, color: Colors.redAccent),
                  iconSize: 70,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/lesson4/secondpage");
                  }),
              Text("This is Homepage")
            ],
          ),
        ),
      ),
    );
  }
}

class _SecondPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 4 Secondpage"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.star, color: Colors.yellowAccent),
                  iconSize: 70,
                  onPressed: () {
                  }),
              Text("This is Secondpage")
            ],
          ),
        ),
      ),
    );
  }
}
