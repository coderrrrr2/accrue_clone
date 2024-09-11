import 'package:accrue_clone/featues/home/presentation/routes/routes.dart';
import 'package:accrue_clone/featues/home/presentation/view/home_base.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

List<GetPage> homePages = [
  GetPage(
      name: HomeRoutes.mainView,
      page: () => const HomeBase(),
      transition: Transition.native,
      transitionDuration: const Duration(milliseconds: 500)),
];
