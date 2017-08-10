import 'package:introToDart/bicycle.dart';
import 'package:test/test.dart';

void main() {
  var bike = new Bicycle(2, 0, 1);
  bike.speedUp(2);

  test('calculate', () {
    expect(bike.toString(), equals("Bicycle{cadence: 2, gear: 0, speed: 3}"));
  });
}