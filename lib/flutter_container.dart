import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // runapp method
  runApp(const CollinsEntryWidget());
}

// Entry Widget
class CollinsEntryWidget extends StatelessWidget {
  const CollinsEntryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp
    return MaterialApp(
      title: 'Collins Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: CollinsHomePage(),
    );
  }
}

// CollinsHomePage Widget
class CollinsHomePage extends StatefulWidget {
  const CollinsHomePage({super.key});

  @override
  State<CollinsHomePage> createState() => _CollinsHomePageState();
}

class _CollinsHomePageState extends State<CollinsHomePage> {
  // Scaffold Key
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collins App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black, // Set your desired background color here
        elevation: 50,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        height: 100,
        width: 350,
        margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 4),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(6.0, 6.0), // changes position of shadow
            ),
          ],
        ),
        child: Text(
          "Working Mood",
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
      ),
    );
  }
}
