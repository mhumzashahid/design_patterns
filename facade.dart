// Definition: This pattern provides a simplified interface to a complex system of classes. It acts as a central point of entry, hiding the internal workings and complexities of the underlying subsystems.

// Benefits:

// Improves code readability and maintainability by hiding complexity.
// Reduces coupling between client code and the underlying system.
// Promotes loose coupling and easier system extension.


// Complex system with various classes for login, registration, etc.
class LoginService {
  void login(String username, String password) {
    // ...
  }
}

class RegistrationService {
  void register(String username, String email, String password) {
    // ...
  }
}

class UserManagementFacade {
  final LoginService _loginService;
  final RegistrationService _registrationService;

  UserManagementFacade(this._loginService, this._registrationService);

  void handleUserLogin(String username, String password) {
    _loginService.login(username, password);
  }

  void handleUserRegistration(String username, String email, String password) {
    _registrationService.register(username, email, password);
  }
}

void main() {
  final userManagement = UserManagementFacade(LoginService(), RegistrationService());
  userManagement.handleUserLogin('john.doe', 'secret123'); // Simplified usage
}
