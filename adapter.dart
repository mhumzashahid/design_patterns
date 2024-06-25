// Interface representing the application functionalities
abstract class IMultiRestoApp {
  void displayMenus(DisplayData data);
  void displayRecommendations(DisplayData data);
}
class MultiRestoApp implements IMultiRestoApp {
  @override
  void displayMenus(DisplayData data) {
    final menuItems = data.toJson()['menu'] as List<dynamic>;
    print('Displaying Menus:');
    for (final item in menuItems) {
      print(item['name']); // Access name property from menu item data
    }
  }
  @override
  void displayRecommendations(DisplayData data) {
    final recommendations = data.toJson()['recommendations'] as List<dynamic>;
    print('Displaying Recommendations:');
    for (final item in recommendations) {
      print(item['title']); // Access title property from recommendation data
    }
  }
}
