import 'package:ecommerce/pages/cart.dart';
import 'package:ecommerce/pages/home-data/news-card.dart';
import 'package:ecommerce/pages/shop.dart';
import 'package:flutter/material.dart';

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
      title: 'News Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.white,
          onPrimary: Colors.black,
        ),
      ),
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
  // add pageIndex
  int pageIndex = 0;
  String apptitle = "News App";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          apptitle,
          style: pageIndex == 0
              ? TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
              : TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              print("share");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("search");
            },
          ),
          SizedBox(width: 10),
        ],
        backgroundColor: pageIndex == 0 ? Colors.white : Colors.red,
        iconTheme: pageIndex == 0
            ? IconThemeData(color: Colors.black)
            : IconThemeData(color: Colors.white),
        elevation: 4.0, // Adds shadow
        // ignore: deprecated_member_use
        shadowColor: Colors.grey,
      ),
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: pageIndex,
        children: [CollinsBlogPage(), CollinsEcommercePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (index) {
          // if index is 2 go to page
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CollinsCartPage()),
            );
          } else {
            // rebuild ui
            setState(() {
              pageIndex = index;
              // update title
              if (index == 0) {
                apptitle = "News App";
              } else {
                apptitle = "Ecommerce App";
              }
            });
          }
          // log
          // print("Index: $index");
        },
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "E-commerce",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
