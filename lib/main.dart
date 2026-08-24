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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);
  }

  void _onTabChanged() {
    if (!_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const titles = ["Murillo_Activity2", "Murillo_Activity3"];
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_tabController.index]),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "Insets"),
            Tab(text: "Alignments"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [InsetsTab(), AlignmentsTab()],
      ),
    );
  }
}

class AlignmentsTab extends StatelessWidget {
  const AlignmentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            children: [
              ..._examples().map(
                (example) => SizedBox(
                  height: constraints.maxHeight,
                  width: double.infinity,
                  child: example is Text ? Center(child: example) : example,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<Widget> _examples() {
    return [
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
            Expanded(
              child: Container(
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
            Expanded(
              child: Container(
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
            Expanded(
              child: Container(
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
            Expanded(
              child: Container(
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
            Expanded(
              child: Container(
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
            Expanded(
              child: Container(
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
            Expanded(
              child: Container(
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
            Expanded(
              child: Container(
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
            Expanded(
              child: Container(
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 100, width: 100, color: Colors.red),
                    Container(height: 90, width: 90, color: Colors.yellow),
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(height: 100, width: 100, color: Colors.red),
                    Container(height: 90, width: 90, color: Colors.yellow),
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 100, width: 100, color: Colors.red),
                    Container(height: 90, width: 90, color: Colors.yellow),
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 100, width: 100, color: Colors.red),
                    Container(height: 90, width: 90, color: Colors.yellow),
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(height: 100, width: 100, color: Colors.red),
                    Container(height: 90, width: 90, color: Colors.yellow),
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(height: 100, width: 100, color: Colors.red),
                    Container(height: 90, width: 90, color: Colors.yellow),
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 100, width: 100, color: Colors.red),
                    Container(height: 90, width: 90, color: Colors.yellow),
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 100, width: 100, color: Colors.red),
                    Container(height: 90, width: 90, color: Colors.yellow),
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
                "Center",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 100, width: 100, color: Colors.red),
                    Container(height: 90, width: 90, color: Colors.yellow),
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
                "Stretch",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    ];
  }
}

class InsetsTab extends StatelessWidget {
  const InsetsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(30),
            color: Colors.red,
            child: const Text("EdgeInsets.all(30)"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            color: Colors.yellow,
            child: const Text(
              "EdgeInsets.symmetric(horizontal: 40, vertical: 10)",
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(
              left: 30,
              top: 10,
              right: 5,
              bottom: 20,
            ),
            color: Colors.blue,
            child: const Text(
              "EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)",
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
            color: Colors.green,
            child: const Text("EdgeInsets.fromLTRB(10, 20, 30, 40)"),
          ),
        ],
      ),
    );
  }
}
