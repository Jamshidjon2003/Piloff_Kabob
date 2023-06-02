part of 'package:ploffe_kebab/src/presentation/pages/main/search/search_page.dart';

mixin SearchMixin on State<SearchPage> {
  late TabController controller;
  late PageController pageController;

  void initStateController(TickerProvider vsync) {
    pageController = PageController(viewportFraction: 1);
    controller = TabController(length: 2, vsync: vsync);
  }

  void disposeController() {
    controller.dispose();
    pageController.dispose();
  }
}
