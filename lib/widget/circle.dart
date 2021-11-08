import 'package:flutter/material.dart';
class CustomAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 60,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.red,
                )),
          ),
          Positioned(
            left: 26,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.blue,
              ),
            ),
          ),
          Positioned(
            left: 56,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.green,
              ),
            ),
          ),
          Positioned(
            left: 80,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey[2000],
                  child: Icon(Icons.add) ),
            ),
          ),
        ],
      ),
    );
  }
}
