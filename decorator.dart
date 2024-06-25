// Definition: This pattern allows for dynamic addition of functionalities to an object without modifying its structure. It achieves this by wrapping the original object with a decorator object that adds the new behavior. Decorators can be stacked to provide layered functionality.

// Benefits:

// Extends object functionality without modifying the original class.
// Promotes loose coupling and easier code maintenance.
// Enables runtime composition of object behavior.



// Basic widget for displaying text
class TextWidget extends StatelessWidget {
  final String text;

  const TextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

// Decorator widget for adding a bold style
class BoldTextDecorator extends DecoratorWidget {
  final TextWidget _textWidget;

  BoldTextDecorator(this._textWidget) : super(child: _textWidget);

  @override
  Widget build(BuildContext context) {
    return Text(
      _textWidget.text,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}

void main() {
  final boldText = BoldTextDecorator(const TextWidget('Hello, world!'));
  // You can further decorate with other decorators (e.g., ItalicTextDecorator)
}
