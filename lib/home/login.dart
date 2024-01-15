import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/custom_button.dart';
import '../constants/forms/form_email.dart';
import '../constants/forms/form_pass.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final _emailCon = TextEditingController();
  final _passwordCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size; //getting the size property
    //final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Container(
                      //color: Colors.black,
                      decoration: const BoxDecoration(
                        color: kwhiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: kDefaultPadding,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Welcome",
                                style: styleMinTitle,
                              ),
                              const Text(
                                "To Arabia Online Plateform",
                                style: styleTitle2,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(children: <Widget>[
                                FormEmailWidget(
                                  controller: _emailCon,
                                  hintText: "Enter National Id / Iqama Number",
                                  isPasswordField: false,
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      return 'National Id is Empty';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                FormPassWidget(
                                  controller: _passwordCon,
                                  hintText: "Enter Password",
                                  isPasswordField: true,
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      return 'Password is Empty';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: value,
                                              checkColor: kwhiteColor,
                                              activeColor: kGlowColor,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  this.value = value!;
                                                });
                                              },
                                            ),
                                            const Text(
                                              "Remember Me",
                                              style: styleTitle,
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          "Forget password?",
                                          style: styleTitle,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                CustomButton(
                                    onTap: () {
                                      if (_formKey.currentState!.validate()) {
                                        //signUp();
                                      }
                                    },
                                    btnWidth: double.infinity,
                                    btHeight: 45,
                                    btnText: 'Login',
                                    btnColor: kGlowColor),
                              ])
                            ]),
                      ),
                    )))));
  }
}
