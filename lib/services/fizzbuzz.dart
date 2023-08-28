class FizzBuzz {
  static FizzBuzzAnswer fizzBuzz(int index) {
    if (index == 0) {
      return FizzBuzzAnswer.nothing;
    }
    if (index % 5 == 0 && index % 7 == 0) {
      return FizzBuzzAnswer.fizzbuzz;
    } else if (index % 5 == 0) {
      return FizzBuzzAnswer.fizz;
    } else if (index % 7 == 0) {
      return FizzBuzzAnswer.buzz;
    } else {
      return FizzBuzzAnswer.nothing;
    }
  }
}

enum FizzBuzzAnswer {
  fizz,
  buzz,
  fizzbuzz,
  nothing,
}
