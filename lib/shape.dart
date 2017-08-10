import 'dart:math';

enum ShapeType{
  circle, square
}

abstract class Shape {
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

Shape shapeFactory(ShapeType shape) {
  switch(shape) {
    case ShapeType.circle:
      return new Circle(2);
    case ShapeType.square:
      return new Square(2);
    default:
      return null;
  }
}

main() {
  var circle = new Circle(2);
  var square = new Square(2);
  print(circle.area);
  print(square.area);

  circle = shapeFactory(ShapeType.circle);
  square = shapeFactory(ShapeType.square);

  print(circle.area);
  print(square.area);
}