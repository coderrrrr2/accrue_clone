import 'package:accrue_clone/shared/widgets/app_button.dart';
import 'package:accrue_clone/shared/widgets/app_column.dart';
import 'package:accrue_clone/shared/widgets/app_textfield.dart';
import 'package:accrue_clone/shared/widgets/shared_widgets.dart';
import 'package:accrue_clone/shared/widgets/text.dart';
import 'package:flutter/material.dart';

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
            icon: const Icon(Icons.arrow_back)),
        actions: [const ClickableText(text: "Having issues"), addWidth(20)],
      ),
      body: AppColumn(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LeadingText(text: "Welcome back"),
            AppTextField(
              controller: emailController,
              header: "Your Email",
            ),
            AppTextField(
              controller: passwordController,
              header: "Your password",
            ),
            AppButton(
              onPressed: () {},
              text: "Login",
            )
          ],
        ),
      ),
    );
  }
}
