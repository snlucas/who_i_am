import 'package:flutter/material.dart';

const Color kColorBotBar = Colors.greenAccent;

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 6.0,
      color: kColorBotBar,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: kColorBotBar,
            ),
          ),
        ],
      ),
      shape: CircularNotchedRectangle(),
    );
  }
}
