import 'package:accrue_clone/shared/assets.dart';
import 'package:accrue_clone/shared/widgets/app_button.dart';
import 'package:accrue_clone/shared/widgets/app_color.dart';
import 'package:accrue_clone/shared/widgets/app_column.dart';
import 'package:accrue_clone/shared/widgets/app_textfield.dart';
import 'package:accrue_clone/shared/widgets/shared_widgets.dart';
import 'package:accrue_clone/shared/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              // weight: 100,
            )),
        actions: [const ClickableText(text: "Having issues?"), addWidth(20)],
      ),
      body: AppColumn(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LeadingText(text: "Welcome back"),
            addHeight(5),
            const TrailingText(
              text: "Sign in with your email to contiue.",
            ),
            addHeight(40),
            AppTextField(
              hintText: 'Enter your email',
              controller: emailController,
              header: "Your Email",
            ),
            addHeight(20),
            AppTextField(
              hintText: 'Enter your password',
              controller: passwordController,
              header: "Your password",
            ),
            addHeight(50),
            AppButton(
              onPressed: () {},
              text: "Log in",
            ),
            addHeight(40),
            Center(
              child: ClickableText(
                style: const TextStyle(
                    fontSize: 18,
                    color: orangeColor,
                    fontWeight: FontWeight.w600),
                text: "Forgot Password?",
                onTap: () {},
              ),
            ),
            addHeight(32),
            ClickableText(
              centered: true,
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.fingerprint, color: blackColor),
                  addWidth(5),
                  const Text(
                    "Login With Biometrics",
                    style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  )
                ],
              ),
              onTap: () {},
            ),
            addHeight(45),
            const CenteredText(
              text: "Or log in with",
              style: TextStyle(color: lightGrey, fontSize: 17),
            ),
            addHeight(15),
            _buildGoogleLoginCotnainer(
              () {},
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGoogleLoginCotnainer(VoidCallback ontap) {
    return ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(600, 60),
            backgroundColor: whiteColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: extraLightGreyColor, width: 1))),
        child: Center(
          child: SvgPicture.asset(googleSvg),
        ));
  }
}
