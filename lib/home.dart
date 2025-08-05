import 'package:flutter/gestures.dart';
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

// new class for blog list template
class CollinsBlogList {
  // Method
  Widget getCard({thumbnail, title, description, author, date}) {
    return Card(
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 5),
                  // Date and Author
                  Text.rich(
                    TextSpan(
                      text: "by",
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.2,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: author,
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.2,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Linda Ikeji tapped");
                            },
                        ),
                        TextSpan(
                          text: " at $date",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.2,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        // Comment
                        TextSpan(
                          text: " (2 Comment)",
                          style: TextStyle(
                            fontSize: 12,
                            height: 1.2,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Comments tapped");
                            },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 5),
                  Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.2,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// create blog stateful widget
class CollinsBlogPage extends StatefulWidget {
  const CollinsBlogPage({super.key});

  @override
  State<CollinsBlogPage> createState() => _CollinsBlogPageState();
}

class _CollinsBlogPageState extends State<CollinsBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              width: double.infinity,
              height: 250,
              // Background Image
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://www.lindaikejisblog.com/photos/shares/aluko-wsl-2018-title_1754038632.webp",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      // ignore: deprecated_member_use
                      Colors.black.withOpacity(1),
                      // ignore: deprecated_member_use
                      Colors.black.withOpacity(.0),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "England more competitive and organized than Nigeria – Ex Chelsea star Aluko explains why she ditched Super Falcons",
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 22,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ),

            // Body Section
            for (var i = 0; i < 10; i++)
              CollinsBlogList().getCard(
                thumbnail:
                    "https://pagesix.com/wp-content/uploads/sites/3/2025/07/paris-jackson-copy-V2.jpg?quality=75&strip=all",
                title:
                    "Paris Jackson and her fiancé end their engagement a week after she was spotted crying in public",
                description:
                    "Paris Jackson, daughter of late pop icon Michael Jackson, and her fiancé Justin Long have split and ended their engagement.The breakup comes just over a week after the 27-year-old daug",
                author: " Linda Ikeji",
                date: "01-08-25",
              ),
          ],
        ),
      ),
    );
  }
}

// create ecommerce page
class CollinsEcommercePage extends StatefulWidget {
  const CollinsEcommercePage({super.key});

  @override
  State<CollinsEcommercePage> createState() => _CollinsEcommercePageState();
}

class _CollinsEcommercePageState extends State<CollinsEcommercePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Ecommerce Page"));
  }
}

// create cart page
class CollinsCartPage extends StatefulWidget {
  const CollinsCartPage({super.key});

  @override
  State<CollinsCartPage> createState() => _CollinsCartPageState();
}

class _CollinsCartPageState extends State<CollinsCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Container(child: Text("i am cart page")),
    );
  }
}
