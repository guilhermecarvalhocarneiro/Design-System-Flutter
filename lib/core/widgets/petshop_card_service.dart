import 'package:design_pinterest/core/colors.dart';
import 'package:flutter/material.dart';

class PetshopCardService extends StatefulWidget {
  final String serviceID;
  final String serviceName;
  final String serviceDescription;
  final double servicePrice;
  final int serviceTime;
  final bool selected;

  const PetshopCardService({
    super.key,
    required this.serviceID,
    required this.serviceName,
    required this.serviceDescription,
    required this.servicePrice,
    required this.serviceTime,
    this.selected = false,
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
        color: widget.selected ? CustomColors.bluePetshopBackgroundCard : CustomColors.blueInitialBackground,
        borderRadius: BorderRadius.circular(12.2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.serviceName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color:  widget.selected ? Colors.white: CustomColors.textBluePetShopCardService,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Text(
                widget.serviceDescription,
                style: TextStyle(
                  fontSize: 16,
                  color: widget.selected ? Colors.white : CustomColors.textBluePetShopCardService,
                  height: 1.15,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "R\$ ${widget.servicePrice.toStringAsFixed(2)}",
                style:  TextStyle(
                  fontSize: 26,
                  color: widget.selected ? Colors.white : CustomColors.textBluePetShopCardService,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
             Text(
              "Tempo de execução do serviço",
              style: TextStyle(
                color: widget.selected ? Colors.white: CustomColors.textBluePetShopCardService,
              ),
            ),
            Text(
              "${widget.serviceTime.toString()} minutos",
              style:  TextStyle(
                color: widget.selected ? Colors.white : CustomColors.textBluePetShopCardService,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
