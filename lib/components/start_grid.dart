import 'package:flutter/material.dart';



class StartGrid extends StatelessWidget {
  const StartGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2, children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/black both.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/white one.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/white one.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/cat.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/black both.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/white half circle.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ]);
  }
}
