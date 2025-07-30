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
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.all(20),
        child: Text(
          "Welcome to Collins App hdjdj didnon DINCC ENC EO k  inrie inc eincqclki ien jeueinie fjfjjjfi ieu cuue iqblkroq nq b lrcc ;rlqrbfueb fub vur vrubk rvorbv uru rqjir roiuf  biryqobo  pbr rvro;vlblnvurbbruf vrubv rblv urbrrv ubviq",
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            wordSpacing: 3,
          ),
        ),
      ),
    );
  }
}
