import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity 2',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Murillo_Activity 2")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Main Axis Alignment
            const Text(
              "Row Main Axis Alignment",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Center",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 100, height: 100, color: Colors.red),
                        Container(width: 90, height: 90, color: Colors.yellow),
                        Container(width: 80, height: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Space Around",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(width: 100, height: 100, color: Colors.red),
                        Container(width: 90, height: 90, color: Colors.yellow),
                        Container(width: 80, height: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Space Between",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: 100, height: 100, color: Colors.red),
                        Container(width: 90, height: 90, color: Colors.yellow),
                        Container(width: 80, height: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Space Evenly",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(width: 100, height: 100, color: Colors.red),
                        Container(width: 90, height: 90, color: Colors.yellow),
                        Container(width: 80, height: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Start",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(width: 100, height: 100, color: Colors.red),
                        Container(width: 90, height: 90, color: Colors.yellow),
                        Container(width: 80, height: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "End",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(width: 100, height: 100, color: Colors.red),
                        Container(width: 90, height: 90, color: Colors.yellow),
                        Container(width: 80, height: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: const Text(
                "Row Cross Axis Alignment",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Start",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(width: 100, height: 100, color: Colors.red),
                        Container(width: 90, height: 90, color: Colors.yellow),
                        Container(width: 80, height: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "End",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(width: 100, height: 100, color: Colors.red),
                        Container(width: 90, height: 90, color: Colors.yellow),
                        Container(width: 80, height: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Center",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(width: 100, height: 100, color: Colors.red),
                        Container(width: 90, height: 90, color: Colors.yellow),
                        Container(width: 80, height: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Stretch",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: SizedBox(
                      height: 150,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(width: 100, color: Colors.red),
                          Container(width: 90, color: Colors.yellow),
                          Container(width: 80, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: const Text(
                "Column Main Axis Alignment",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Center",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(height: 100, width: 100, color: Colors.red),
                          Container(
                            height: 90,
                            width: 90,
                            color: Colors.yellow,
                          ),
                          Container(height: 80, width: 80, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Space Around",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(height: 100, width: 100, color: Colors.red),
                          Container(
                            height: 90,
                            width: 90,
                            color: Colors.yellow,
                          ),
                          Container(height: 80, width: 80, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Space Between",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 100, width: 100, color: Colors.red),
                          Container(
                            height: 90,
                            width: 90,
                            color: Colors.yellow,
                          ),
                          Container(height: 80, width: 80, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Space Evenly",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(height: 100, width: 100, color: Colors.red),
                          Container(
                            height: 90,
                            width: 90,
                            color: Colors.yellow,
                          ),
                          Container(height: 80, width: 80, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Start",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(height: 100, width: 100, color: Colors.red),
                          Container(
                            height: 90,
                            width: 90,
                            color: Colors.yellow,
                          ),
                          Container(height: 80, width: 80, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "End",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(height: 100, width: 100, color: Colors.red),
                          Container(
                            height: 90,
                            width: 90,
                            color: Colors.yellow,
                          ),
                          Container(height: 80, width: 80, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: const Text(
                "Column Cross Axis Alignment",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Start",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 100, width: 100, color: Colors.red),
                        Container(height: 90, width: 90, color: Colors.yellow),
                        Container(height: 80, width: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "End",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(height: 100, width: 100, color: Colors.red),
                        Container(height: 90, width: 90, color: Colors.yellow),
                        Container(height: 80, width: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Center",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(height: 100, width: 100, color: Colors.red),
                        Container(height: 90, width: 90, color: Colors.yellow),
                        Container(height: 80, width: 80, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Content Container
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Stretch",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: SizedBox(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(height: 100, color: Colors.red),
                          Container(height: 90, color: Colors.yellow),
                          Container(height: 80, color: Colors.blue),
                        ],
                      ),
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
