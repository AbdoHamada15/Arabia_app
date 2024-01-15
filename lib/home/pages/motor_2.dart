import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:arabia_app/home/home_screen.dart';
import '../../constants/constants.dart';
import '../../constants/custom_button.dart';
import '../../constants/forms/form_email.dart';

class VehicleInfo extends StatefulWidget {
  const VehicleInfo({super.key});

  @override
  State<VehicleInfo> createState() => _VehicleInfoState();
}

class _VehicleInfoState extends State<VehicleInfo>
    with TickerProviderStateMixin {
  bool value = false;
  String? selectedCategorie = "Third Party";
  //final _formKey = GlobalKey<FormState>();
  final _Con1 = TextEditingController();
  late int selectedRadio;
  String? selectedValue;
  bool isSwitched = false;
  List items = ["Item1", "Item2", "Item3"];
  String? dropdownValue;
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
    TabController tabController = TabController(length: 2, vsync: this);
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
                const Text(
                  "Vehicle Information",
                  style: TextStyle(
                      color: k2Color,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.022,
                ),
                const Text(
                  "Product",
                  style: styleLabel,
                ),

                SizedBox(
                  height: height * 0.01,
                ),
                //tabbar

                TabBar(
                  controller: tabController,
                  labelColor: kwhiteColor,
                  isScrollable: false,
                  indicatorPadding: const EdgeInsets.only(right: 5, left: 5),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: kGlowColor),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: const EdgeInsets.only(left: 35, right: 35),
                  unselectedLabelColor: k2Color,
                  tabs: const [
                    Tab(
                      child: Text('Third Party',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text('Comprehensive',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),

                //tabbarView
                SizedBox(
                  width: double.infinity,
                  height: 700,
                  child:
                      TabBarView(controller: tabController, children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.017,
                        ),
                        /*
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RadioListTile<String>(
                                title: const Text("data"),
                                value: 'value',
                                groupValue: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                }),
                            RadioListTile<String>(
                                title: const Text("data"),
                                value: 'value',
                                groupValue: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                }),
                          ],
                        ),
                        */
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Vehicle Identifier:",
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
                                        "Sequence No",
                                        style: styleRadio,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  child: Row(
                                    children: <Widget>[
                                      Radio(
                                          value: 2,
                                          activeColor: kGlowColor,
                                          groupValue: selectedRadio,
                                          onChanged: (val) {
                                            setSelectedRadio(val!);
                                          }),
                                      const Text(
                                        "Custom Card",
                                        style: styleRadio,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        FormEmailWidget(
                          controller: _Con1,
                          hintText: "Sequence No",
                          isPasswordField: false,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Sequence No is Empty';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: height * 0.031,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Ownership transfer?",
                              style: styleLabel,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                FlutterSwitch(
                                  width: 40.0,
                                  height: 23.0,
                                  valueFontSize: 12.0,
                                  toggleSize: 14.0,
                                  value: isSwitched,
                                  onToggle: (val) {
                                    setState(() {
                                      isSwitched = val;
                                    });
                                  },
                                ),
                                /*
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Value: $isSwitched",
                                  ),
                                ),*/
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        const Text(
                          "Vehicle Usage",
                          style: styleLabel,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: DropdownButtonFormField<String>(
                            hint: const Text(
                              'Vehicle Usage',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 148, 149, 149),
                                  fontSize: 16),
                            ),
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            items: <String>[
                              'Vehicle Usage',
                              'Item2',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        Container(
                            width: width * 0.95,
                            height: 55,
                            color: kwhiteColor,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.person_rounded,
                                      color: Color.fromARGB(255, 19, 55, 85),
                                      size: 35,
                                    ),
                                    Text(
                                      "Additional Drivers",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(255, 78, 79, 79),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: kgreyColor,
                                      size: 20,
                                    ),
                                  ],
                                )
                              ],
                            )),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                            width: width * 0.95,
                            height: 55,
                            color: kwhiteColor,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.control_point_sharp,
                                      color: Color.fromARGB(255, 19, 55, 85),
                                      size: 35,
                                    ),
                                    Text(
                                      "Additional Information",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(255, 78, 79, 79),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: kgreyColor,
                                      size: 20,
                                    ),
                                  ],
                                )
                              ],
                            )),
                        SizedBox(
                          height: height * 0.07,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
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
                        SizedBox(
                          height: height * 0.01,
                        ),
                        CustomButton(
                            onTap: () {
                              /*if (_formKey.currentState!.validate()) {
                                        //signUp();
                                      } */
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                            btnWidth: width * 0.95,
                            btHeight: 45,
                            btnText: 'Next',
                            btnColor: kGlowColor),
                      ],
                    ),
                    const Text(
                      "Vehicle Identifier:",
                      style: styleLabel,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
