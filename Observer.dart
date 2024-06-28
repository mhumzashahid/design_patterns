// Interface for observers
abstract class Observer {
  void update(Subject subject);
}

// Class representing the subject
class Subject {
  List<Observer> _observers = [];

  void attach(Observer observer) {
    _observers.add(observer);
  }

  void detach(Observer observer) {
    _observers.remove(observer);
  }

  void notifyObservers() {
    for (final observer in _observers) {
      observer.update(this); // Call update method on each observer
    }
  }

  // Methods that can trigger notifications
}

// Concrete observer class
class DataViewer implements Observer {
  @override
  void update(Subject subject) {
    // Update the view based on subject's state change
  }
}
