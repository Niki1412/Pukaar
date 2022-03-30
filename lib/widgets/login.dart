import 'package:flutter/material.dart';

import 'package:mental_health_app/screens/self%20test/self_test.dart';
import 'package:mental_health_app/doctor/tabs_screen_doctor.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          child: Text("Select an option"), value: "Select an option"),
      const DropdownMenuItem(child: Text("Doctor"), value: "Doctor"),
      const DropdownMenuItem(child: Text("Patient"), value: "Patient"),
    ];
    return menuItems;
  }

  String selectedValue = "Select an option";

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromRGBO(63, 55, 201, 1).withOpacity(0.5),
                  const Color.fromRGBO(67, 97, 238, 1).withOpacity(0.9),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0, 1],
              ),
            ),
          ),
          SizedBox(
            height: deviceSize.height,
            width: deviceSize.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: SizedBox(
                height: 200,
                width: 200,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(169, 255, 255, 255)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Pukaar',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        width: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(
                            Icons.account_circle,
                            color: Colors.black,
                          ),
                          labelText: 'Enter your Name',
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                          labelText: 'Enter Email',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        width: 20,
                      ),
                      const Center(
                        child: Text(
                          'Please confirm the user type',
                          style: TextStyle(fontSize: 20, color: Colors.black87),
                        ),
                      ),
                      DropdownButton(
                        value: selectedValue,
                        items: dropdownItems,
                        dropdownColor: Colors.white,
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue = newValue.toString();
                          });
                        },
                      ),
                      RaisedButton(
                        onPressed: () {
                          if (selectedValue == 'Doctor') {
                            Navigator.of(context).pushReplacementNamed(
                                TabsScreenDoctor.routeName);
                          } else {
                            Navigator.of(context)
                                .pushReplacementNamed(SelfTest.routeName);
                          }
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
