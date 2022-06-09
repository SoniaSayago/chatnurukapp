import 'package:flutter/material.dart';
import 'package:reality_near/core/framework/colors.dart';
import 'package:reality_near/core/framework/globals.dart';
import 'package:reality_near/presentation/views/login/widgets/button_with_states.dart';
import 'package:reality_near/presentation/widgets/forms/textForm.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/register";
  RegisterScreen({Key key}) : super(key: key);
//Variables
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
//text-Form-EMAIL
    TxtForm _txtFormEmail = TxtForm(
      placeholder: "Email",
      controller: _emailController,
      inputType: InputType.Email,
      txtColor: txtPrimary,
      prefixIcon: const Icon(Icons.mail),
      errorMessage: 'Email obligatorio',
    );
//text-Form-Password
    TxtForm _txtFormPassword = TxtForm(
      placeholder: "Password",
      controller: _passwordController,
      inputType: InputType.Password,
      txtColor: txtPrimary,
      prefixIcon: const Icon(Icons.lock),
      errorMessage: 'Password obligatorio',
    );
//text-Form-Password-Confirm
    TxtForm _txtFormPasswordConf = TxtForm(
      placeholder: "Password Confirm",
      controller: _passwordConfController,
      inputType: InputType.Password,
      txtColor: txtPrimary,
      prefixIcon: const Icon(Icons.lock),
      errorMessage: 'Password obligatorio',
    );

    return Scaffold(
      backgroundColor: backgroundWhite,
      //Top bar with back button
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: greenPrimary2),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      //Body
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //Logo image
              Image.asset('assets/imgs/Logo_sin_fondo.png',
                  height: 200, width: 200),
              //Login form
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
                child: _txtFormEmail,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
                child: _txtFormPassword,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
                child: _txtFormPasswordConf,
              ),
              //Button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ButtonWithStates(
                    text: 'Registrate',
                    press: () {
                      //creamos un evento en el bloc
                    }),
              ),
            ]),
      ),
    );
  }
}