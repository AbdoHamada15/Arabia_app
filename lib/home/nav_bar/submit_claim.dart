import 'package:flutter/material.dart';
import 'package:arabia_app/home/home_screen.dart';
import '../../constants/constants.dart';
import '../../constants/custom_button.dart';
import '../../constants/forms/form.dart';

class SubmitClaim extends StatefulWidget {
  const SubmitClaim({super.key});

  @override
  State<SubmitClaim> createState() => _SubmitClaimState();
}

class _SubmitClaimState extends State<SubmitClaim> {
  final _Con1 = TextEditingController();
  final _Con2 = TextEditingController();
  final _Con3 = TextEditingController();
  final _Con4 = TextEditingController();
  final _Con5 = TextEditingController();
  final _Con6 = TextEditingController();

  late int selectedRadio;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

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
          'Motor Claim Request',
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
                const Row(
                  children: <Widget>[
                    Text(
                      "Accident Informaion",
                      style: style1,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  children: <Widget>[
                    const Text(
                      "Accident Reports#",
                      style: styleLabel,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          child: Row(
                            children: <Widget>[
                              Radio(
                                  value: 1,
                                  toggleable: true,
                                  activeColor: kGlowColor,
                                  groupValue: selectedRadio,
                                  onChanged: (val) {
                                    setSelectedRadio(val!);
                                  }),
                              const Text(
                                "Najm",
                                style: styleRadio,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            children: <Widget>[
                              Radio(
                                  value: 2,
                                  toggleable: true,
                                  activeColor: kGlowColor,
                                  groupValue: selectedRadio,
                                  onChanged: (val) {
                                    setSelectedRadio(val!);
                                  }),
                              const Text(
                                "Traffic Department",
                                style: styleRadio,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                FormWidget(
                  controller: _Con1,
                  hintText: "Najm Accident Reports#",
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Najm Accident Reports# is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                const Text(
                  "National ID / Iqama No",
                  style: styleLabel,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                FormWidget(
                  controller: _Con2,
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
                  "Sequance# / Custom#",
                  style: styleLabel,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                FormWidget(
                  controller: _Con3,
                  hintText: "Sequance# / Custom#",
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Sequance# / Custom# is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                const Text(
                  "Taqdeer#",
                  style: styleLabel,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                FormWidget(
                  controller: _Con4,
                  hintText: "Taqdeer#",
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Taqdeer# is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.034,
                ),
                const Text(
                  "IBAN Number",
                  style: styleLabel,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                FormWidget(
                  controller: _Con5,
                  hintText: "IBAN Number",
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'IBAN Number is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.034,
                ),
                const Text(
                  "Contact Mobile No",
                  style: styleLabel,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                FormWidget(
                  controller: _Con6,
                  hintText: "Contact Mobile No",
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Contact Mobile No is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                CustomButton(
                    onTap: () {
                      /*if (_formKey.currentState!.validate()) {
                                        //signUp();
                                      } */
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
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
