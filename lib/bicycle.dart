class Bicycle {
  int cadence;
  int gear;
  int _speed;

  Bicycle(this.cadence, this.gear, this._speed);

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() {
    return 'Bicycle{cadence: $cadence, gear: $gear, speed: $speed}';
  }

}