import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:register_page/patientprofile.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with TickerProviderStateMixin {
  late AnimationController controller;
  bool determinate = false;
  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    //controller.repeat();
    // _openDatePicker(context);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  String radioButtonItem = 'Male';
  // Group Value for Radio Button.
  int id = 1;
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(237, 246, 246, 245),
            Color.fromARGB(255, 126, 168, 203),
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenSize.width * 1 / 30,
              ),
              Center(
                child: Container(
                  // color: Colors.white,
                  width: screenSize.width * 0.9,
                  height: screenSize.width * 1 / 10,
                  child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.arrow_back_sharp),
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: screenSize.width * 1 / 20,
                      ),
                      Text("Patient's Details",
                          style: GoogleFonts.acme(
                              fontSize: screenSize.width * 1 / 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.width * 1 / 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                width: screenSize.width * 0.95,
                height: screenSize.height * 0.08,
                child: Row(
                  children: [
                    SizedBox(
                      width: screenSize.width * 1 / 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Step 1/4",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                    Container(
                      //color: Colors.blue,
                      width: screenSize.width * 0.7,
                      height: 20,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      // left: screenSize.width * 0.3,
                      // right: screenSize.width * 0.3),
                      child: LinearProgressIndicator(
                          value: 0.25,
                          semanticsLabel: 'Linear progress indicator',
                          minHeight: 1),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.width * 1 / 20,
              ),
              Center(
                child: Container(
                  color: Colors.white,
                  width: screenSize.width * 0.95,
                  //height: screenSize.height * 1.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 20,
                        ),
                        child: Text(
                          "Patient's Name",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.width * 1 / 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: screenSize.height * 0.02,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            prefixIcon: Icon(Icons.person),
                            hintText: "Enter Patient's Name",
                            labelText: 'Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      BottomPicker.date(
                        displaySubmitButton: true,
                        displayCloseIcon: false,
                        title: 'Age',
                        dateOrder: DatePickerDateOrder.dmy,
                        pickerTextStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: screenSize.width * 1 / 50,
                        ),
                        titleStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        onChange: (index) {
                          print(index);
                        },
                        onSubmit: (index) {
                          print(index);
                        },
                        // bottomPickerTheme: BottomPickerTheme.plumPlate,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Gender",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: id,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem = 'Male';
                                  id = 1;
                                });
                              },
                            ),
                            Text(
                              'Male',
                              style: new TextStyle(fontSize: 17.0),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Radio(
                              value: 2,
                              groupValue: id,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem = 'Female';
                                  id = 2;
                                });
                              },
                            ),
                            Text(
                              'Female',
                              style: new TextStyle(fontSize: 17.0),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Radio(
                              value: 3,
                              groupValue: id,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem = 'Others';
                                  id = 3;
                                });
                              },
                            ),
                            Text(
                              'Others',
                              style: new TextStyle(fontSize: 17.0),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Mobile Number",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: screenSize.height * 0.02),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            prefixIcon: Icon(Icons.contact_phone),
                            hintText: " Enter your Contact Number",
                            labelText: 'Mobile Numnber',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: screenSize.height * 0.02),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            prefixIcon: Icon(Icons.email),
                            hintText: " Enter your Email Id",
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.width * 1 / 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const patientprofile()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: screenSize.width * 0.2,
                        right: screenSize.width * 0.2,
                      ),
                      child: Container(
                        width: 180,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.lightBlueAccent,
                        ),
                        child: Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.width * 1 / 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
