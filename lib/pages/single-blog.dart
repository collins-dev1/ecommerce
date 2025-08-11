import 'package:flutter/material.dart';
// CollinsBlogDetail

class CollinsBlogDetail extends StatefulWidget {
  const CollinsBlogDetail({super.key});

  @override
  State<CollinsBlogDetail> createState() => _CollinsBlogDetailState();
}

class _CollinsBlogDetailState extends State<CollinsBlogDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "England more competitive and organized than Nigeria – Ex Chelsea star Aluko explains why she ditched Super Falcons",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://www.lindaikejisblog.com/photos/shares/aluko-wsl-2018-title_1754038632.webp",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.6),
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "England more competitive and organized than Nigeria – Ex Chelsea star Aluko explains why she ditched Super Falcons",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        height: 1.2,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //  Date
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                              size: 14,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "2020-17-4",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                height: 1.2,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        // autor
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10),
                            Icon(Icons.person, color: Colors.white, size: 14),
                            SizedBox(width: 5),
                            Text(
                              "Linda Ikeji",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                height: 1.2,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // share icon and comment
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.share, color: Colors.black, size: 20),
                      SizedBox(width: 5),
                      Text(
                        "Share",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          height: 1.2,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.comment, color: Colors.black, size: 20),
                      SizedBox(width: 5),
                      Text(
                        "(2) Comments",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Divider
            Divider(height: 1, color: Colors.grey),
            // Content
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "Former Chelsea forward Eniola Aluko has shared her thoughts on why she chose to represent England at international level instead of playing for Nigeria’s Super Falcons.\n\nSpeaking during a recent sports podcast, Aluko explained that her decision was influenced by the structure and competitive environment within the English football system. According to her, the pathways for player development, access to elite training facilities, and the organization of the Women’s Super League gave her confidence that she would reach her full potential.\n\n“Growing up in England, I was part of an academy system that emphasized discipline, professionalism, and clear career progression,” Aluko said. “Nigeria has incredible talent, but the systems in place at the time weren’t as competitive or organized as what I experienced here.”\n\nAluko added that while she has deep respect for the Super Falcons and Nigerian football culture, her choice was ultimately about pursuing a career where she felt she could thrive consistently.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  height: 1.2,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            //recent comment
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Recent Comments",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // icon and text
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.add_comment,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Add Comment",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              height: 1.2,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // comment
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://www.lindaikejisblog.com/photos/shares/aluko-wsl-2018-title_1754038632.webp",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Linda Ikeji",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    height: 1.2,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "2021-08-08",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    height: 1.2,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Speaking during a recent sports podcast, Aluko explained that her decision was influenced by the structure and competitive environment within the English football system.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
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
          ],
        ),
      ),
    );
  }
}
