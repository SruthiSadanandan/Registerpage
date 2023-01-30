import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:register_page/Search.dart';
import 'package:register_page/booknow.dart';
import 'package:register_page/widget/stack_colors.dart';

class MyDoctor extends StatefulWidget {
  const MyDoctor({super.key});

  @override
  State<MyDoctor> createState() => _MyDoctorState();
}

class _MyDoctorState extends State<MyDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Stack(children: [
          BottomStackColorWidget(),
          ToperStackColorWidget(),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(Icons.arrow_back_ios_new_outlined),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white),
                    ),
                    Text(
                      "My Doctor",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchS(),
                          ),
                        );
                      },
                      child: Container(
                        child: Icon(Icons.search),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 800,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ContainerWidget(
                            color: Colors.white,
                            height: 200,
                            radius: 10,
                            width: 200,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 12),
                                      child: Container(
                                        width: 100,
                                        height: 90,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    images[index]
                                                    // "assets/images/doctor.jpg"
                                                    ))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 13, right: 20),
                                      child: Container(
                                        height: 90,
                                        width: 180,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  list[index],
                                                  // "Dr.Tranquilli",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 40),
                                                  child: const Icon(
                                                    Icons.favorite,
                                                    color: Colors.pink,
                                                    size: 24.0,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 54),
                                              child: Text(
                                                "Specialist Medicine",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blue,
                                                  // fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 68),
                                              child: Text(
                                                "6 Years Expeirience",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                  // fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.circle_rounded,
                                                  color: Colors.blue,
                                                  size: 15,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "87%",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                SizedBox(
                                                  width: 1,
                                                ),
                                                Icon(
                                                  Icons.circle_rounded,
                                                  color: Colors.blue,
                                                  size: 15,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "69 Patient Stories",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                              ],
                                            ),
                                            // SizedBox(
                                            // height: 40,
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        color: Colors.white,
                                        width: 130,
                                        height: 65,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5),
                                              child: Text(
                                                "Next Available",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 1),
                                              child: Text(
                                                "10:00 AM tomorrow",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: ,
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 23),
                                      child: Container(
                                        color: Colors.white,
                                        width: 210,
                                        height: 40,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const BookNow()));
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: 30,
                                              right: 20,
                                            ),
                                            child: Container(
                                              width: 280,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.blue,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Book Now',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      );
                    },
                    itemCount: 10,
                    separatorBuilder: (context, index) {
                      return Divider();
                    }),
              ),
            ],
          )
        ]));
  }
}

class ContainerWidget extends StatelessWidget {
  double height;
  double width;
  var color;
  double radius;
  var child;

  ContainerWidget({
    required this.child,
    required this.color,
    required this.height,
    required this.radius,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: child,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: color),
    );
  }
}

final list = [
  "Dr.Tranquilli",
  "Dr.Bone",
  "Dr.John",
  "Dr.Darwin",
  "Dr.Mad",
  "Dr.Snow",
  "Dr.Love",
  "Dr.Hill",
  "Dr.Prince",
  "Dr.Car"
];

final images = [
  "https://storage.googleapis.com/scipro-bucket/Doctors/doctor%201.png",
  "https://storage.googleapis.com/scipro-bucket/Doctors/doctor%201.png",
  "https://storage.googleapis.com/scipro-bucket/Doctors/doctor%201.png",
  "https://storage.googleapis.com/scipro-bucket/Doctors/doctor%201.png",
  "https://storage.googleapis.com/scipro-bucket/Doctors/doctor%201.png",
  "https://storage.googleapis.com/scipro-bucket/Doctors/doctor%201.png",
  "https://storage.googleapis.com/scipro-bucket/Doctors/doctor%201.png",
  "https://storage.googleapis.com/scipro-bucket/Doctors/doctor%201.png",
];
