import 'package:prectar/index.dart';

class Lesson1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hello World App'),
      ),
      body: new Center(
        child: new Text(
            'Hello, world!'
        ),
      ),
    );
  }
}