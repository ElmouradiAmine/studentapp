import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget customButton(String img, String text) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            width: 100,
            child: Image(
              image: AssetImage(img),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 25.0, // soften the shadow
            offset: Offset(
              5.0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        leading: Icon(Icons.menu),
        actions: <Widget>[
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        title: Text("Insert Name here"),
      ),
      body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          crossAxisSpacing: 40,
          mainAxisSpacing: 20,
          padding: EdgeInsets.all(20.0),
          // Generate 100 widgets that display their index in the List.
          children: <Widget>[
            customButton("images/profilIcon.png", "Profil"),
            customButton("images/NotesIcon.png", "Marks"),
            customButton("images/schedule.png", "Schedule"),
            customButton("images/profilIcon.png", "Profil"),
            customButton("images/attendance.jpg", "Attendance"),
            customButton("images/chatIcon.jpg", "Chat"),
          ]),
    );
  }
}
