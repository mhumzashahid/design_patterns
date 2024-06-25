// https://github.com/geekific-official/geekific-youtube/blob/main/design-patterns/structural-adapter/src/main/java/com/youtube/geekific/FancyUIService.java

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


class FancyUIService {
  void displayMenus(DisplayData data) {
    final menuItems = data.toJson()['menu'] as List<dynamic>;
    print('Displaying Menus using Fancy UI:');
    for (final item in menuItems) {
      print(item['name']); // Access name property from menu item data
    }
  }
  void displayRecommendations(DisplayData data) {
    final recommendations = data.toJson()['recommendations'] as List<dynamic>;
    print('Displaying Recommendations using Fancy UI:');
    for (final item in recommendations) {
      print(item['title']); // Access title property from recommendation data
    }
  }
}

class FancyUIServiceAdapter implements IMultiRestoApp {
  final FancyUIService fancyUIService;
  FancyUIServiceAdapter() : fancyUIService = FancyUIService();
  @override
  void displayMenus(DisplayData data) {
    print("Displaying Fancy Menus using converted JSON data...");
    fancyUIService.displayMenus(data); // Already expects DisplayData
  }
  @override
  void displayRecommendations(DisplayData data) {
    print("Displaying Fancy Recommendations using converted JSON data...");
    fancyUIService.displayRecommendations(data); // Already expects DisplayData
  }
}
