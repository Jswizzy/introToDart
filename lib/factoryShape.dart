import 'dart:math';

enum ShapeType {
  circle,
  square
}

abstract class Shape {
  factory Shape(ShapeType type) {
    if (type == ShapeType.circle) return new Circle(2);
    if (type == ShapeType.square) return new Square(2);
    throw 'Can\'t create $type.';
  }

  num get area;
}

class Circle implements Shape {
  final num radius;

  Circle(this.radius);

  num get area => PI * pow(radius, 2);
}

class Square implements Shape {
  final num side;

  Square(this.side);

  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  num area;
  num radius;
}

main() {
  var circle = new Shape(ShapeType.circle);
  var square = new Shape(ShapeType.square);
  print(circle.area);
  print(square.area);
}