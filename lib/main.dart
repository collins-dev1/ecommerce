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
  // Index for Bottom Navigation Bar
  int selectedIndex = 0;
  // Scaffold Key
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Collins App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black, // Set your desired background color here
        elevation: 50,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/1200x/54/fe/47/54fe47995a227368e77f8b2260ef44ce.jpg',
                ),
              ),
              accountName: Text('Collins'),
              accountEmail: Text('hello@collins.com'),
            ),
            ListTile(title: Text('Home'), leading: Icon(Icons.home)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("About"), leading: Icon(Icons.info_sharp)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("Contact"), leading: Icon(Icons.contact_mail)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("Settings"), leading: Icon(Icons.settings)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text("Logout"), leading: Icon(Icons.logout)),
            Divider(color: Colors.black),
            ListTile(title: Text("App Version: 1.0.0")),
            Divider(color: Colors.black),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("I am Working");
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.share, color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Welcome to Collins App',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              // Image from Network
              Image.network(
                'https://i.pinimg.com/1200x/54/fe/47/54fe47995a227368e77f8b2260ef44ce.jpg',
                width: 500.0,
                height: 500.0,
              ),
              // Input
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                    hintText: 'Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'This is a sample text This is a sample text This is a sample text This is a sample textThis is a sample text This is a sample textThis is a sample textThis is a sample text',
                  textAlign: TextAlign.center,
                ),
              ),
              // Add EveladedButton
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed');

                  // Show Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Button Pressed'),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text('Click Me', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                print('Home Button Pressed');
              },
              icon: Icon(Icons.home, color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                print('Settings Button Pressed');
              },
              icon: Icon(Icons.settings, color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                print('Profile Button Pressed');
              },
              icon: Icon(Icons.person, color: Colors.black),
            ),
          ],
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red, // Selected icon/label color
        unselectedItemColor: Colors.grey[800], // Light dark for unselected
        type: BottomNavigationBarType.fixed, // Needed for more than 3 items
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (int index) {
          print("Index: $index");
          // Update the selected index
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                'End Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            ListTile(title: Text('Home'), leading: Icon(Icons.home)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text('About'), leading: Icon(Icons.info_sharp)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text('Contact'), leading: Icon(Icons.contact_mail)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text('Settings'), leading: Icon(Icons.settings)),
            Divider(color: Colors.black, height: 0),
            ListTile(title: Text('Logout'), leading: Icon(Icons.logout)),
            Divider(color: Colors.black),
            ListTile(title: Text('App Version: 1.0.0')),
            Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
