import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body:  Row(
        children: [
          Expanded(child: Container(
            color: Colors.blue,)),
          Expanded(
            flex: 5,
            child: Container(
            color: Colors.red,
          ))
        ],
      ),
    );
  }
}