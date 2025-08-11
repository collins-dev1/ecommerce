// create cart page
import 'package:flutter/material.dart';

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
