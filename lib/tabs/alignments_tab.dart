import 'package:flutter/material.dart';

import 'alignment_sections/column_cross_axis_section.dart';
import 'alignment_sections/column_main_axis_section.dart';
import 'alignment_sections/row_baseline_section.dart';
import 'alignment_sections/row_cross_axis_section.dart';
import 'alignment_sections/row_main_axis_section.dart';

/// Landing view of the Alignments tab: tap a button to open that
/// alignment's dedicated page, then swipe through its examples.
class AlignmentsTab extends StatelessWidget {
  const AlignmentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _menuButton(context, "Row Main Axis", const RowMainAxisSection()),
            const SizedBox(height: 12),
            _menuButton(context, "Row Cross Axis", const RowCrossAxisSection()),
            const SizedBox(height: 12),
            _menuButton(context, "Row Baseline", const RowBaselineSection()),
            const SizedBox(height: 12),
            _menuButton(
              context,
              "Column Main Axis",
              const ColumnMainAxisSection(),
            ),
            const SizedBox(height: 12),
            _menuButton(
              context,
              "Column Cross Axis",
              const ColumnCrossAxisSection(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuButton(BuildContext context, String label, Widget destination) {
    return SizedBox(
      width: 260,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => destination),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          side: const BorderSide(color: Colors.black26),
        ),
        child: Text(label),
      ),
    );
  }
}
