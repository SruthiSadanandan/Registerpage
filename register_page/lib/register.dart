import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:register_page/LoginPage.dart';
import 'package:register_page/SignupPage.dart';
import 'package:register_page/profile.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 135, 245),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('Register',
                  style: GoogleFonts.acme(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 15,
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(30),
            //     ),
            //   ),
            // ),
            Text(
              'Create your account',
              style: GoogleFonts.acme(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),

            Padding(
              padding: EdgeInsets.only(
                left: screenSize.width * 0.3,
                right: screenSize.width * 0.3,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  //icon: Icon(Icons.person),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter Your Username',
                  labelText: 'Username',
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),

            Padding(
                padding: EdgeInsets.only(
                  left: screenSize.width * 0.3,
                  right: screenSize.width * 0.3,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    prefixIcon: Icon(Icons.person),

                    hintText: 'Enter Your Email',
                    labelText: 'EmailAddress',
                    // border: OutlineInputBorder(),
                  ),
                )),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.3, right: screenSize.width * 0.3),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  prefixIcon: Icon(Icons.person),

                  hintText: 'Enter Your PassWord',

                  labelText: 'Password',
                  // icon: Icon(),
                  // border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // color: Colors.white,
            Padding(
              padding: EdgeInsets.only(
                left: screenSize.width * 0.3,
                right: screenSize.width * 0.3,
              ),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  prefixIcon: Icon(Icons.person),

                  hintText: 'Confirim Your Password',
                  labelText: 'Confirm Password',
                  // border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'By registering,you are agreeing to ',
              style: GoogleFonts.acme(fontSize: 13, color: Colors.white),
            ),
            Text(
              'our terms of use and privacy policy.',
              style: GoogleFonts.acme(fontSize: 13, color: Colors.white),
            ),
            // TextButton(onPressed: null, child: Text('Register')),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenSize.width * 0.3,
                  right: screenSize.width * 0.3,
                ),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lightBlueAccent,
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Profile()));
                      },
                      child: Text(
                        'Register',
                        style:
                            GoogleFonts.acme(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: Text(
                'Already have an account? Login',
                style: GoogleFonts.acme(fontSize: 13, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
