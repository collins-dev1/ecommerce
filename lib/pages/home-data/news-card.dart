// ignore_for_file: avoid_init_to_null

import 'package:dio/dio.dart';
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
  dynamic blogheader = null;
  dynamic blogbody = null;

  // oninit
  @override
  void initState() {
    super.initState();
    getBlog();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            blogheader != null
                ? InkWell(
                    onTap: () {
                      // go to blog detail page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CollinsBlogDetail(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      // Background Image
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(blogheader["image"] ?? ""),
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
                            blogheader["title"],
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
                  )
                : const Center(
                    child: Padding(
                      padding: EdgeInsets.all(60),
                      child: CircularProgressIndicator(color: Colors.black),
                    ),
                  ),

            // Body Section
            blogbody != null
                ? Column(
                    children: [
                      for (var i = 0; i < blogbody.length; i++)
                        CollinsBlogList().getCard(
                          thumbnail: blogbody[i]["image"] ?? "No Image Found",
                          title: blogbody[i]["title"] ?? "No Title",
                          description:
                              blogbody[i]["description"] ?? "No Description",
                          author: blogbody[i]["author"] ?? "Unknown",
                          date:
                              blogbody[i]["published_at"] ?? "No date and Time",
                          comment: blogbody[i]["source"]?.length,
                        ),
                    ],
                  )
                : const Center(
                    child: Padding(
                      padding: EdgeInsets.all(60),
                      child: CircularProgressIndicator(color: Colors.black),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  // get post

  void getBlog() async {
    try {
      var response = await Dio().get(
        'http://api.mediastack.com/v1/news?access_key=ed981d0bbcbb62c4e4fd1423b6a966c1',
      );
      var data = response.data;
      // access list inside the data
      var articles = data["data"];
      setState(() {
        blogheader = articles[0];
        blogbody = articles;
      });
    } catch (e) {
      print(e);
    }
  }
}
