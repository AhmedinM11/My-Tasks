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
class Device {
  void turnOn() {
    print("hi");
  }
}

class Phone extends Device {
  void turnOn() {
    print("hello");
  }
}

class Laptop extends Device {
  void turnOn() {
    print("Heyy");
  }
}



//for exercise 2
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void introduce() {
    
  }
}
class Student extends Person {
  Student(String name, int age) : super(name, age);  
  void introduce() {
  }
}
//for the next exercise 
Future<String> fetchUser() async {
  await Future.delayed(Duration(seconds: 2),
    return "User: Alice",);
}
Future<String> fetchOrders() async {
  await Future.delayed(Duration(seconds: 2),
    return "Orders: 3 Items",);
}



//The last one
class InvAmoExce implements Exception {
  final String message;
  InvAmoExce(this.message);

  String toString() return "InvalidAmountException: $message";
}
void transferMoney(double amount) {
  if (amount <= 0) {
    throw InvAmoExce("Amount must be greater than 0");
  } else if (amount > 5000) {
    throw FormatException("Amount exceeds maximum transfer limit of 5000");
  } else {
    print("Transfer successful for amount: \$${amount.toStringAsFixed(2)}");
  }
}
void main() {
  try {
    transferMoney(2500);
  } on InvAmoExce catch (e) {
    print(e);
  } on FormatException catch (e) {
    print("FormatException: ${e.message}");
  } finally {
    print("Transaction check completed");
  }
}
