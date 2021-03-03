import 'package:prectar/screens/home/homepage.dart';
import 'package:prectar/screens/index.dart';
import 'package:prectar/screens/lesson/lesson1.dart';
import 'package:prectar/screens/lesson/lesson2.dart';
import 'package:prectar/screens/lesson/lesson3.dart';
import 'package:prectar/screens/lesson/lesson4.dart';
import 'index.dart';

void main() => runApp(Prectar());

class Prectar extends StatefulWidget {
  State createState() {
    return _PrectarState();
  }
}

class _PrectarState extends State<Prectar> {
  _PrectarState();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final app =  MaterialApp(
      title: 'Prectar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        "/": (context) => Homepage(),
        "/lesson1": (context) => Lesson1(),
        "/lesson2": (context) => Lesson2(),
        "/lesson3": (context) => Lesson3(),
        "/lesson4": (context) => Lesson4(),
        "/lesson5": (context) => Lesson3(),
        "/lesson6": (context) => Lesson3()
      },
      home: RouterView(),
    );
    return app;
  }
}