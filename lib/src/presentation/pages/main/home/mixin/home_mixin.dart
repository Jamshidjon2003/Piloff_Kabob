part of 'package:ploff_final/src/presentation/pages/main/home/home_page.dart';




mixin HomeMixin on State<HomePage> {
  late TabController controller;
  late PageController pageController;


  List<String> titleList = [
    "Популярные блюда",
    "Плов",
    "Шашлык",
    "Чайханский плов"
  ];
  late int selected;


  void initStateController(TickerProvider vsync) {
    pageController = PageController(viewportFraction: 1);
    controller = TabController(length: 2, vsync: vsync);
    selected = 0;
  }

  void disposeController() {
    controller.dispose();
    pageController.dispose();
  }
}
