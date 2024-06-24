// Factory Pattern:

// Definition: This pattern centralizes object creation logic in a factory function or class. The factory decides which concrete object to create based on provided parameters, promoting flexibility and decoupling from the specific object types.

// Benefits:

// Encapsulates object creation logic, hiding implementation details.
// Allows for dynamic object creation based on runtime conditions.
// Promotes code reusability

class Shape {
  void draw() {
    print("draw shape");
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print("draw Circle");
  }
}

class Square extends Shape {
  @override
  void draw() {
    print("draw Square");
  }
}

class ShapeFactory {
  static Shape createShape(String type) {
    switch (type) {
      case 'circle':
        return Circle();
      case 'square':
        return Square();
      default:
        throw ArgumentError('Invalid shape type');
    }
  }
}

void main() {
  var circle = ShapeFactory.createShape("circle");
  circle.draw();
}
