import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/custom_button.dart';
import '../constants/forms/form.dart';
import '../constants/forms/form_email.dart';
import '../constants/forms/form_pass.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool value = false;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final _Con1 = TextEditingController();
  final _Con2 = TextEditingController();
  final _emailCon = TextEditingController();
  final _passwordCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Container(
                      color: kwhiteColor,
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
                                height: 15,
                              ),
                              Column(children: <Widget>[
                                FormWidget(
                                  controller: _Con1,
                                  hintText: "Enter National Id / Iqama Number",
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      return 'National Id is Empty';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                FormWidget(
                                  controller: _Con2,
                                  hintText: "Enter Mobile number",
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      return 'Mobile number is Empty';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                FormEmailWidget(
                                  controller: _emailCon,
                                  hintText: "Enter Email address",
                                  isPasswordField: false,
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      return 'Email is Empty';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
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
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          "Accept Terms & Conditions",
                                          style: styleTitle,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                CustomButton(
                                    onTap: () {
                                      if (_formKey.currentState!.validate()) {
                                        //signUp();
                                      }
                                    },
                                    btnWidth: double.infinity,
                                    btHeight: 45,
                                    btnText: 'Next',
                                    btnColor: kGlowColor),
                              ])
                            ]),
                      ),
                    )))));
  }
}
