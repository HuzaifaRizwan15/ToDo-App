import 'package:todo_app/components/listViewContainer.dart';
import 'package:todo_app/components/priorityTaskContainer.dart';
import 'package:todo_app/components/welcomeContainer.dart';
import 'package:todo_app/utils/colors.dart';
import 'package:todo_app/createTask.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: mainColor,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WelcomeContainer(),
              Container(
                height: 30,
                width: double.infinity,
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "My Priority Task",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              PriorityContainer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 28),
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Tasks",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TaskScreen()),
                        );
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 30,
                      ),
                      label: Text(
                        "Add tasks",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 80, 80, 80),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's Task",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Weekly Task",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                    ),
                    Text(
                      "Monthly Task",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Mytodo(),
            ],
          ),
        ),
      ),
    );
  }
}
