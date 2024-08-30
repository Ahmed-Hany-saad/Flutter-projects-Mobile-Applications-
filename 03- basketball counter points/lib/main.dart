import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Backetball_Counter_Pointer(),
    ),
  );
}

// ignore: camel_case_types
class Backetball_Counter_Pointer extends StatefulWidget {
  const Backetball_Counter_Pointer({super.key});

  @override
  State<Backetball_Counter_Pointer> createState() => _My_Information_AppState();
}

// ignore: camel_case_types
class _My_Information_AppState extends State<Backetball_Counter_Pointer> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(226, 255, 179, 0),
        title: Text(
          "pointer Counter",
          style: TextStyle(fontSize: screenWidth * 0.06, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 0,
          top: screenWidth * 0.08,
          right: 0.0,
          bottom: 0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: screenWidth * 1.01,
                ),
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: screenWidth * 0.099),
                    ),
                    Text(
                      "$teamApoints",
                      style: TextStyle(fontSize: screenWidth * 0.3),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(screenWidth * 0.099, screenWidth * 0.14),
                        backgroundColor: const Color.fromARGB(226, 255, 179, 0),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints++;
                        });
                      },
                      child: Text(
                        "add 1 point",
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 0.06,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(screenWidth * 0.099, screenWidth * 0.14),
                        backgroundColor: const Color.fromARGB(226, 255, 179, 0),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints += 2;
                        });
                      },
                      child: Text(
                        "add 2 points",
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 0.06,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(screenWidth * 0.099, screenWidth * 0.14),
                        backgroundColor: const Color.fromARGB(226, 255, 179, 0),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints += 3;
                        });
                      },
                      child: Text(
                        "add 3 points",
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.02,
                    top: screenWidth * 0.01,
                    right: screenWidth * 0.02,
                    bottom: 0,
                  ),
                  child: Container(
                    width: screenWidth * 0.008,
                    height: screenWidth * 1.1,
                    color: const Color.fromARGB(132, 107, 99, 99),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: screenWidth * 0.099),
                    ),
                    Text(
                      "$teamBpoints",
                      style: TextStyle(fontSize: screenWidth * 0.3),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(screenWidth * 0.099, screenWidth * 0.14),
                        backgroundColor: const Color.fromARGB(226, 255, 179, 0),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints++;
                        });
                      },
                      child: Text(
                        "add 1 point",
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 0.06,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(screenWidth * 0.099, screenWidth * 0.14),
                        backgroundColor: const Color.fromARGB(226, 255, 179, 0),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints += 2;
                        });
                      },
                      child: Text(
                        "add 2 points",
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenWidth * 0.06,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(screenWidth * 0.099, screenWidth * 0.14),
                        backgroundColor: const Color.fromARGB(226, 255, 179, 0),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints += 3;
                        });
                      },
                      child: Text(
                        "add 3 points",
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: screenWidth * 0.04,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(screenWidth * 0.099, screenWidth * 0.14),
                backgroundColor: const Color.fromARGB(226, 255, 179, 0),
              ),
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
