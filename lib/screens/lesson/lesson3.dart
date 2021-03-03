
import 'package:prectar/index.dart';

class Lesson3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AwesomeButtonState();
  }
}
class _AwesomeButtonState extends State<Lesson3> {
  int counter = 0;
  List<String> strings = ["Flutter", "Is", "Awesome", "Doesn't", "It"];
  String displayedString = "";

  void onPressed() {
    setState(() {
      displayedString = strings[counter++];
      if (counter >= strings.length) counter = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayedString, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Padding(padding: EdgeInsets.all(15)),
              RaisedButton(
                child: Text("Press me", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                color: Colors.red,
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}