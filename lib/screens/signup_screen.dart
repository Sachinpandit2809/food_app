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
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool click = true;
  void validation(BuildContext context) {
    if (fullNameController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("enter name")));
    } else if (phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("enter phone number")));
    } else if (addressController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("enter address")));
    } else if (emailController.text.isEmpty) {
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
              TopGreet(title: "SignUp", subTitle: "Resister Here!"),
              SizedBox(
                height: 30,
              ),
              MyTextFormField(
                  keyboardType: TextInputType.name,
                  controller: fullNameController,
                  hintText: "full name",
                  label: "name"),
              MyTextFormField(
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  hintText: "phone number",
                  label: "number"),
              MyTextFormField(
                  keyboardType: TextInputType.text,
                  controller: addressController,
                  hintText: "address",
                  label: "address"),
              MyTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  hintText: "email",
                  label: "email"),
              MyPasswordtextformfield(
                  controller: passwordController,
                  hintText: "password",
                  label: "password"),
              InkWell(
                  onTap: () {
                    validation(context);
                  },
                  child: MyButton(title: "Resister")),
              SizedBox(
                height: 6,
              ),
              InkWell(
                  onTap: () {
                    context.router.pushNamed(RoutesName.login);
                  },
                  child: MyReferButton(
                    title: "allready have an account?",
                    subTitle: "Login",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
