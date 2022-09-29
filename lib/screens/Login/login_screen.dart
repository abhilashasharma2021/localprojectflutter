import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localproject/widget/rounded_button.dart';
import 'package:localproject/screens/extensions/string_extension.dart';
import 'package:localproject/widget/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(children: const [
            /*  SizedBox(
                height: 40,
              ),*/
            ]),
            Column(
              children: [
                TextFieldWidget(
                    textController: emailController,
                    label: "Email",
                    hintText: "Enter your Email",
                    style:const TextStyle(color: Colors.black,
                        fontSize: 15),
                    boardRadius: 15,
                    obscureText: false,
                    inputFormatters:[
                      LengthLimitingTextInputFormatter(35),

                    ],
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                      if (value != null && value.isValidEmail) {
                        return "Email can't be empty";
                      }

                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                    textController: passwordController,
                    label: "Password",
                    obscureText: true,
                    style:const TextStyle(color: Colors.black,
                    fontSize: 15),
                    inputFormatters:[
                      LengthLimitingTextInputFormatter(25),
                    ],
                    keyboardType: TextInputType.visiblePassword,
                    hintText: "Enter your Password",
                    boardRadius: 15,
                    validator: (String? value) {
                      if (value != null && value.isValidPassword) {
                        return "Password can't be empty";
                      }

                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                RoundedButton(
                  text: "LOGIN",
                  color: Colors.black,
                  textColor: Colors.white,
                  press: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Sending Message"),
                    ));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            )
          ],
        ),
      ),
    );
  }
}
