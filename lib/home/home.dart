import 'package:flutter/material.dart';
import '../services/fizzbuzz.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fizzbuzz!!"),
      ),
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
        color: getColor(FizzBuzz.fizzBuzz(index)),
        child: ListTile(
          leading: getLeadingIcon(FizzBuzz.fizzBuzz(index)),
          title: Text(FizzBuzz.fizzBuzz(index) == FizzBuzzAnswer.nothing
              ? index.toString()
              : FizzBuzz.fizzBuzz(index).name),
        ));
  }

  Icon getLeadingIcon(Enum s) {
    switch (s) {
      case FizzBuzzAnswer.nothing:
        return const Icon(Icons.check_box_outline_blank);
      case FizzBuzzAnswer.fizz:
        return const Icon(Icons.fire_truck);
      case FizzBuzzAnswer.buzz:
        return const Icon(Icons.air);
      case FizzBuzzAnswer.fizzbuzz:
        return const Icon(Icons.baby_changing_station);
      default:
        throw Exception("No Icon found");
    }
  }

  Color getColor(Enum s) {
    switch (s) {
      case FizzBuzzAnswer.nothing:
        return Colors.white;
      case FizzBuzzAnswer.fizz:
        return Colors.cyan;
      case FizzBuzzAnswer.buzz:
        return Colors.orange;
      case FizzBuzzAnswer.fizzbuzz:
        return Colors.purple;
      default:
        throw Exception("No Color found");
    }
  }
}
