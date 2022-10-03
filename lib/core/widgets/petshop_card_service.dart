import 'package:design_pinterest/core/colors.dart';
import 'package:flutter/material.dart';

class PetshopCardService extends StatefulWidget {
  final String serviceName;
  final String serviceDescription;
  final double servicePrice;
  final int serviceTime;

  const PetshopCardService({
    super.key,
    required this.serviceName,
    required this.serviceDescription,
    required this.servicePrice,
    required this.serviceTime,
  });

  @override
  State<PetshopCardService> createState() => _PetshopCardServiceState();
}

class _PetshopCardServiceState extends State<PetshopCardService> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        color: CustomColors.yellowInitialBackground,
        borderRadius: BorderRadius.circular(12.2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.serviceName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Text(
                widget.serviceDescription,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.15,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "R\$ ${widget.servicePrice.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const Text(
              "Tempo de execução do serviço",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              "${widget.serviceTime.toString()} minutos",
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
