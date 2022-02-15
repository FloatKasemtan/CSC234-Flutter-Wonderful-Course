import 'package:flutter/material.dart';
import 'package:form_exercise/Widgets/CustomTextField.dart';
import 'package:form_exercise/Widgets/SubmitButton.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  RegExp checkEmail = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
      caseSensitive: false);

  RegExp checkPassword = RegExp(r"(?=.*\d)(?=.*[A-Z])");

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                controller: _emailController,
                helperText: "Email",
                autoFocus: false,
                reg: checkEmail,
                icon: Icons.email,
              ),
              CustomTextField(
                  controller: _passwordController,
                  helperText: "Password",
                  autoFocus: true,
                  reg: checkPassword,
                  icon: Icons.vpn_key),
            ],
          ),
          SubmitButton(
            formKey: _formKey,
            emailValue: _emailController,
            passwordValue: _passwordController,
          ),
        ],
      ),
    );
  }
}
