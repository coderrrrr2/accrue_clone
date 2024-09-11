import 'package:accrue_clone/featues/auth/presentation/routes/pages.dart';
import 'package:accrue_clone/featues/home/presentation/routes/pages.dart';
import 'package:accrue_clone/featues/home/presentation/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static const initial = HomeRoutes.mainView;

  static final List<GetPage> routes = [...authPages, ...homePages];
}
