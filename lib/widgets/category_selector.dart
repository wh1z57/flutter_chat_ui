import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedCat = 0;
  List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedCat = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color:
                          index == selectedCat ? Colors.white : Colors.white60,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ),
            );
          }),
    );
  }
}
