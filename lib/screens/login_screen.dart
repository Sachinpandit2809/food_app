import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/auth_widgets/my_button.dart';
import 'package:food_app/auth_widgets/my_passwordTextformfield.dart';
import 'package:food_app/auth_widgets/my_refer_button.dart';
import 'package:food_app/auth_widgets/my_textformfield.dart';
import 'package:food_app/auth_widgets/top_greet.dart';
import 'package:food_app/routes/routes_name.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool click = true;
  void validation(BuildContext context) {
    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("enter email")));
    } else if (passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("enter password")));
    } else if (passwordController.text.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("password must be greater than 5 letter")));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopGreet(title: "Login", subTitle: "Welcome Back!"),
              SizedBox(
                height: 30,
              ),
              MyTextFormField(
                controller: emailController,
                hintText: "emaik",
                label: "email",
                keyboardType: TextInputType.emailAddress,
              ),
              MyPasswordtextformfield(
                  controller: passwordController,
                

                  hintText: "password",
                  label: "password"),
              InkWell(
                  onTap: () {
                    validation(context);
                  },
                  child: MyButton(title: "login")),
              SizedBox(
                height: 6,
              ),
              InkWell(
                  onTap: () {
                    context.router.pushNamed(RoutesName.signin);
                  },
                  child: MyReferButton(
                    title: "dont have an account?",
                    subTitle: "SignUp",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
