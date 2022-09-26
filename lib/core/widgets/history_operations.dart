import 'package:design_pinterest/core/colors.dart';
import 'package:design_pinterest/core/mock_data/history_operations.dart';
import 'package:design_pinterest/core/widgets/labels.dart';
import 'package:flutter/material.dart';

class NuvolsHistoryOperations extends StatefulWidget {
  const NuvolsHistoryOperations({super.key});

  @override
  State<NuvolsHistoryOperations> createState() => _NuvolsHistoryOperationsState();
}

class _NuvolsHistoryOperationsState extends State<NuvolsHistoryOperations> {
  @override
  Widget build(BuildContext context) {
    final mockData = HistoryOperations().getData;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 125,
        child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            final item = mockData[index];
            return Container(
              width: 85,
              padding: const EdgeInsets.only(right: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(item['image']),
                  ),
                  const SizedBox(height: 8),
                  TextListViewHistoryOperation(
                    texto: "${item['titulo']}",
                    corTexto: CustomColors.gray,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
