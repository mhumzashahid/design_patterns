class User {
  final String name;
  final int age;

  User(this.name, this.age);
}

class UserManager {
  static final UserManager _instance = UserManager._internal();

  factory UserManager() {
    return _instance;
  }
  UserManager._internal();
  User? _user; //
  void setUser(User user) {
    _user = user;
  }

  User? getUser() {
    return _user;
  }
}

void main() {
  final userManager = UserManager();
  userManager.setUser(User('John Doe', 10));
  userManager.setUser(User('John Doe1', 10));

  final anotherManager = UserManager(); // Still returns the same instance
  print(anotherManager.getUser()!.name);
  anotherManager.setUser(User('John Doe2', 10));
  print(anotherManager.getUser()!.name);
  print(userManager.getUser()!.name);
}
