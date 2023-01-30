import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PatientPage extends StatefulWidget {
  const PatientPage({super.key});

  @override
  State<PatientPage> createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  @override
  Widget build(BuildContext context) {
    var Screensize = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor:  const Color.fromARGB(255, 255, 255, 245)
      body: Container(
        height: Screensize.height,
        width: Screensize.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 110, 163, 241),
            Colors.white,
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Screensize.height,
              width: Screensize.width,
              padding: EdgeInsets.only(left: 30, top: 0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(Icons.arrow_back_sharp),
                    color: Colors.white,
                  ),
                  Text(
                    "Patient's Details",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
