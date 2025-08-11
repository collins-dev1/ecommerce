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
      body: Container(
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
                      Icon(Icons.calendar_today, color: Colors.white, size: 14),
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
    );
  }
}
