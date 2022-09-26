import 'package:flutter/material.dart';

import '../core/widgets/grid_homepage.dart';
import '../core/widgets/history_operations.dart';
import '../core/widgets/page_header.dart';

class NuvolsDashboardPage extends StatelessWidget {
  const NuvolsDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                NuvolsPageHeader(),
                NuvolsGridHomePage(),
                NuvolsHistoryOperations(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
