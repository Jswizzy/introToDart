import 'dart:math';

class Rectangle {
  Point origin;
  int height;
  int width;

  Rectangle({this.origin = const Point(0, 0), this.height = 0, this.width = 0});

  @override
  String toString() {
    return 'Rectangle{origin: $origin, height: $height, width: $width}';
  }
}

main() {
  print(new Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(new Rectangle(origin: const Point(10, 10)));
  print(new Rectangle(width: 200));
  print(new Rectangle());
}
