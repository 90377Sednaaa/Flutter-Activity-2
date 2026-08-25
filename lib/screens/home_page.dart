import 'package:flutter/material.dart';

import '../tabs/alignments_tab.dart';
import '../tabs/insets_tab.dart';

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
