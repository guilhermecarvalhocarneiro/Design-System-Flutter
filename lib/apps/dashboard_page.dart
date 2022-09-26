import 'package:flutter/material.dart';

import '../core/widgets/grid_homepage.dart';
import '../core/widgets/history_operations.dart';
import '../core/widgets/labels.dart';
import '../core/widgets/page_header.dart';

class NuvolsDashboardPage extends StatelessWidget {
  const NuvolsDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: kToolbarHeight * .70),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: CustomScrollView(
            slivers: [
              NuvolsPageHeader(),
             TitleGridHomePage(),
              NuvolsGridHomePage(),
              TitleHistoryOperationHomePage(),
              NuvolsHistoryOperations(),
            ],
          ),
        ),
      ),
    );
  }
}
