//for exercise 1 page 20(advanced dart ppt)
class Student {
  String name;
  int age;
  Student(this.name, this.age);
  
  Student.guest() {
    name = "Guest";
    age = 0;
  }
  
}
//for exercise (2)
class Product {
  final String id;
  String name;
  double price;
  
  Product(this.name, this.price) : id = "P-001";
}