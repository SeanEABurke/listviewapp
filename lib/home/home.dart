import 'package:flutter/material.dart';
import '../services/fizzbuzz.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => MyItem(
          index: index,
        ),
        addAutomaticKeepAlives: false,
        cacheExtent: 100.0,
      ),
    );
  }
}

class MyItem extends StatelessWidget {
  final int index;
  const MyItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: getLeadingIcon(FizzBuzz.fizzBuzz(index)),
      title: Text(FizzBuzz.fizzBuzz(index).isEmpty
          ? index.toString()
          : FizzBuzz.fizzBuzz(index)),
    ));
    // child: ListTile(
    //   leading: Icon(FizzBuzz.fizzBuzz(index).isEmpty
    //       ? Icons.thumb_down
    //       : Icons.thumb_up_sharp),
    //   title: Text(FizzBuzz.fizzBuzz(index).isEmpty
    //       ? index.toString()
    //       : FizzBuzz.fizzBuzz(index)),
    // ),
  }

  Icon getLeadingIcon(String s) {
    if (s.isEmpty) {
      return const Icon(Icons
          .check_box_outline_blank); // Return check icon if condition is true
    } else if (s == "fizz") {
      return const Icon(
          Icons.fire_truck); // Return close icon if condition is false
    } else if (s == "buzz") {
      return const Icon(Icons.air); // Return close icon if condition is false
    } else if (s == "fizzbuzz") {
      return const Icon(Icons
          .baby_changing_station); // Return close icon if condition is false
    } else {
      throw Exception("No Icon found");
    }
  }
}
