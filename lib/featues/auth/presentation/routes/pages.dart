import 'package:accrue_clone/featues/auth/presentation/routes/routes.dart';
import 'package:accrue_clone/featues/auth/presentation/view/sign_in_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

List<GetPage> authPages = [
  GetPage(
      name: AuthRoutes.signIn,
      page: () => const SignInScreen(),
      transition: Transition.native,
      transitionDuration: const Duration(milliseconds: 500)),
];
