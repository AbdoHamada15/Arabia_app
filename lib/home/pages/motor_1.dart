import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:arabia_app/constants/custom_button.dart';

import '../../constants/constants.dart';
import '../../constants/forms/form.dart';

import 'motor_2.dart';

class Motor extends StatefulWidget {
  const Motor({super.key});

  @override
  State<Motor> createState() => _MotorState();
}

class _MotorState extends State<Motor> {
  // final _formKey = GlobalKey<FormState>();
  final _Con1 = TextEditingController();
  final _Con2 = TextEditingController();
  final _Con3 = TextEditingController();
  final _Con4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        //leading: const MenuWidget(),
        elevation: 0,
        leading: IconButton(
          icon: iconBack,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: kCardColor1,
        centerTitle: true,
        title: const Text(
          'Motor Insurance',
          style: styleAddress,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: kBackgroundColor,
            padding: kDefaultPadding,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeIn(
                  duration: const Duration(milliseconds: 1000),
                  child: const Text(
                    "Owner Information",
                    style: style1,
                  ),
                ),
                SizedBox(
                  height: height * 0.022,
                ),
                const Text(
                  "National ID / Iqama No",
                  style: styleLabel,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                FormWidget(
                  controller: _Con1,
                  hintText: "National ID / Iqama No",
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'National ID is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.039,
                ),
                const Text(
                  "Date Of Birth",
                  style: styleLabel,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                FormWidget(
                  controller: _Con2,
                  hintText: "Date Of Birth",
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Date Of Birth is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.031,
                ),
                const Text(
                  "Mobile No",
                  style: styleLabel,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                FormWidget(
                  controller: _Con3,
                  hintText: "Mobile No",
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Mobile No is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  "Policy Effective Date",
                  style: styleLabel,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                FormWidget(
                  controller: _Con4,
                  hintText: "Policy Effective Date",
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Policy Effective Date is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.29,
                ),
                CustomButton(
                    onTap: () {
                      /*if (_formKey.currentState!.validate()) {
                                        //signUp();
                                      } */
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VehicleInfo()));
                    },
                    btnWidth: width * 0.95,
                    btHeight: 45,
                    btnText: 'Next',
                    btnColor: kGlowColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
