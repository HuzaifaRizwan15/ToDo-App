import 'package:todo_app/utils/colors.dart';
import 'package:todo_app/dashboard.dart';
import 'package:flutter/material.dart';
// import 'package:assignment_todo/data/List.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: mainColor,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                height: 120,
                // padding: EdgeInsets.symmetric(vertical: 12),
                width: 190,
                child: Text(
                  "Manage your\nDaily TO DO",
                  style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 450,
                height: 520,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/checkList.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: Text(
                  "Without much worry just manage\nthings as easy as piece of cake",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                width: 250,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromRGBO(255, 192, 14, 1.0), // Background color
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                    );
                  },
                  child: Text(
                    "Create a Note",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
