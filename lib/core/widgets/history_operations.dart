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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TituloSecao(texto: "Suas últimas operações"),
        const SizedBox(height: 12),
        SizedBox(
          height: 120,
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
      ],
    );
  }
}
