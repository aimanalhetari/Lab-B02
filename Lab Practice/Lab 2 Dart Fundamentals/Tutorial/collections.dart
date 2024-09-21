int add(int accumulator, int currentValue) {
  print('accumulator: $accumulator, currentValue: $currentValue');
  return accumulator + currentValue;
}
int maximum(int x, int y) => x>y? x:y;

void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  var x = numbers.reduce(add);
  print(x);
  // print(numbers);

  // for (var number in numbers) {
  //   print(number);
  // }

  // numbers.forEach((name) => print(name));
  var squaredNumbers = numbers.map((a) => a * a).reduce(add);
  print(squaredNumbers);

  var sum = numbers.fold(0, (add));
  print('Sum is $sum');
  

  // var max = numbers.reduce((a, b) => a > b ? a : b);
  var max1 = numbers.reduce(maximum);
  print('Max is $max1');
  var max2 = numbers.fold(0, (maximum));
  print('Max is $max2');
}
