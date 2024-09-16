import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blue,
      child: Text(
        'Mi Aplicación',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
