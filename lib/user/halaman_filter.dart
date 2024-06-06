import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            "HematKuy Page",
            style: TextStyle(color: Colors.white),
          )),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/filter.jpeg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
