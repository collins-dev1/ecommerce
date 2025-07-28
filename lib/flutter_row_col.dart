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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Hello, Collins!'),
                Text('Hello, Collins!'),
                Text('Hello, Collins!'),
              ],
            ),
            // SizedBox(height: 20),
            Text("This is another Column"),
          ],
        ),
      ),
    );
  }
}
