import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:register_page/Doctor.dart';
import 'package:register_page/imageselector.dart';
import 'package:register_page/patientprofile.dart';
import 'package:register_page/widget/stack_colors.dart';

class PersonalInfo extends StatefulWidget {
  var networkiamge =
      'https://firebasestorage.googleapis.com/v0/b/leptonscipro-31792.appspot.com/o/files%2Fimages%2FL.png?alt=media&token=d';
  PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    log("width${width}");
    log("width${height}");

    return Scaffold(
        extendBody: true,
        body: Stack(children: [
          BottomStackColorWidget(),
          ListView(
            children: [
              Container(
                width: 375.w,
                height: 375.h,
                decoration: BoxDecoration(
                  // border: Border()
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Color.fromARGB(226, 14, 99, 235),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            child:
                                const Icon(Icons.arrow_back_ios_new_outlined),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Profile",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "Set up your profile",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Update your profile to connect your doctor with",
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "better impression",
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Stack(children: [
                          Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      widget.networkiamge.isEmpty
                                          ? 'https://firebasestorage.googleapis.com/v0/b/leptonscipro-31792.appspot.com/o/files%2Fimages%2FClass%209%20Microbiology%20Staining%20Part%20A.png?alt=media&token=2e36efc1-3520-45e5-aa4f-393187637aa0'
                                          : widget.networkiamge,
                                    ))),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Gallery(),
                                ),
                              );
                            },
                            child: Container(
                              height: 90,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent.withOpacity(0.5),
                                  shape: BoxShape.circle),
                              margin: EdgeInsets.only(left: 180, top: 140),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              ),
                            ),
                          )
                          // ),
                        ])
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Personal information",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      // prefixIcon: Icon(Icons.person),
                      hintText: "Enter Your Name",
                      labelText: 'Name',
                      border: InputBorder.none
                      // border: OutlineInputBorder.none(),
                      ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    hintText: "Enter Your Contact Number",
                    labelText: 'Contact Number',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.edit),

                    // border: OutlineInputBorder.none(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      suffixIcon: Icon(Icons.edit),
                      hintText: "DDMMYY ",
                      labelText: 'Date of Birth',
                      border: InputBorder.none
                      // border: OutlineInputBorder.none(),
                      ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      // prefixIcon: Icon(Icons.person),
                      hintText: "Add details",
                      labelText: 'Location',
                      border: InputBorder.none
                      // border: OutlineInputBorder.none(),
                      ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
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
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        width: 280,
                        height: 48,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 75, 101, 234),
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
            ],
          ),
        ]));
  }
}
