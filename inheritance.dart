void main() {
  var car = Car(4);
  car.cartype();
  car.wheelsNum();

  print("\n");

  var plane = Plane(3);
  plane.planetype();
  plane.wheelsNum();
}

abstract class Vehicle {
  int wheel;
  Vehicle(this.wheel);
  void wheelsNum();
}

class Car extends Vehicle {
  Car(super.wheel);
  void cartype() {
    print("land runner");
  }

  @override
  void wheelsNum() {
    print("this is the car $wheel");
  }
}

class Plane extends Vehicle {
  Plane(super.wheel);
  void planetype() {
    print("sky scrapper");
  }

  @override
  void wheelsNum() {
    print("this is the car $wheel");
  }
}
