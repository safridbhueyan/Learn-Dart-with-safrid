void main() {
  var car = Car(
      4); // we have to create an instence of our Car class to use the Car or Abstract class elements or functions
  car.cartype(); // here we can access the Car class functions
  car.wheelsNum(); // as well as the abstract parents class functions and elements

  print("\n");

  var plane = Plane(
      3); // we have to create an instence of our Plane class to use the Plane or Abstract class elements or functions
  plane.planetype();
  plane.wheelsNum();
}
/* 
abstract class is the blueprint of an function block which cant be mess around with 
but it can be re used in our code so for that we need a abstract class 
where it has constructor and we can pass value through this constructor but in order to use the
functions of abstract class we need to create a child class and extend it to our abstract class...

*/

abstract class Vehicle {
  int wheel;
  Vehicle(this.wheel);
  void wheelsNum();
}

/*
here Car class is a child class which is exteneded to our parent class which is a abstract class
here we create a constructor but it has to use super. key in order to create a constructor in child class
after that we can use @override to override the functions of our parents or abstract class
in order to use the elements of our parents abstract class
*/
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

/*
here Plane class is a child class which is exteneded to our parent class which is a abstract class
here we create a constructor but it has to use super. key in order to create a constructor in child class
after that we can use @override to override the functions of our parents or abstract class
in order to use the elements of our parents abstract class


in this way we can re use our codes and through child classes with the abstract class as our blueprint 
if anythings happens in child class our abstract class ( blueprint ) stays harmfree 

*/
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
