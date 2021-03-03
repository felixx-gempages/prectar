import 'package:prectar/index.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {
  int activeIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Lesson"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.count(
          primary: false,
          padding: EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            RaisedButton(
              child: Text("Lesson 1"),
              color: Colors.deepPurpleAccent,
              highlightColor: Colors.deepPurple,
              splashColor: Colors.deepPurple,
              onPressed: () => {
                Navigator.pushNamed(context, "/lesson1")
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
            ),
            RaisedButton(
              child: Text("Lesson 2"),
              color: Colors.deepPurpleAccent,
              highlightColor: Colors.deepPurple,
              splashColor: Colors.deepPurple,
              onPressed: () => {
                Navigator.pushNamed(context, "/lesson2")
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
            ),
            RaisedButton(
              child: Text("Lesson 3"),
              color: Colors.deepPurpleAccent,
              highlightColor: Colors.deepPurple,
              splashColor: Colors.deepPurple,
              onPressed: () => {
                Navigator.pushNamed(context, "/lesson3")
              },
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            RaisedButton(
              child: Text("Lesson 4"),
              color: Colors.deepPurpleAccent,
              highlightColor: Colors.deepPurple,
              splashColor: Colors.deepPurple,
              onPressed: () => {
                Navigator.pushNamed(context, "/lesson4")
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
            ),
            RaisedButton(
              child: Text("Lesson 5"),
              color: Colors.deepPurpleAccent,
              highlightColor: Colors.deepPurple,
              splashColor: Colors.deepPurple,
              onPressed: () => {
                Navigator.pushNamed(context, "/lesson5")
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
            ),
            RaisedButton(
              child: Text("Lesson 6"),
              color: Colors.deepPurpleAccent,
              highlightColor: Colors.deepPurple,
              splashColor: Colors.deepPurple,
              onPressed: () => {
                Navigator.pushNamed(context, "/lesson6")
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text("Business"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text("School"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("Calendar"),
          ),
        ],
        currentIndex: this.activeIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.black,
        elevation: 0,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}

//children: <Widget>[
//Card(
//child: Container(
//padding: EdgeInsets.all(16),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//Text("Lesson 1")
//],
//),
//),
//),
//Card(
//child: Container(
//padding: EdgeInsets.all(16),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//Text("Lesson 1")
//],
//),
//),
//)
//],
