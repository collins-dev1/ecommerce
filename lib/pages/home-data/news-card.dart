import 'package:ecommerce/pages/home-data/news-card-list.dart';
import 'package:ecommerce/pages/single-blog.dart';
import 'package:flutter/material.dart';

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
            InkWell(
              onTap: () {
                // go to blog detail page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CollinsBlogDetail()),
                );
              },
              child: Container(
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
