class FizzBuzz {
  static String fizzBuzz(int index) {
    if (index == 0) {
      return "";
    }
    if (index % 5 == 0 && index % 7 == 0) {
      return "fizzbuzz";
    } else if (index % 5 == 0) {
      return "fizz";
    } else if (index % 7 == 0) {
      return "buzz";
    } else {
      return "";
    }
  }
}

enum FizzBuzzAnswer {
  fizz,
  buzz,
  fizzbuzz,
  nothing,
}
