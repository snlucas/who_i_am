import 'package:flutter/material.dart';
import 'bottom_bar.dart';
import 'edit_screen.dart';
import 'my_card_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCardPage(),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditScreen(),
            ),
          );
        },
        child: Icon(Icons.edit),
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
