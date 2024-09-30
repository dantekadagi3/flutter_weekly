import 'package:codelab3/main.dart';
import 'package:codelab3/pages/landing_page.dart';
import 'package:flutter/material.dart';

class LandingSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text('Search hotel', style: TextStyle(color: Colors.grey)),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const LandingPage()));
              },
              child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: mainThemeColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Icon(Icons.search, color: Colors.white, size: 15)))
        ]));
  }
}
