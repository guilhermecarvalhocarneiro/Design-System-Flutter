import 'package:flutter/material.dart';

class NuvolsBackButtomHead extends StatefulWidget {
  const NuvolsBackButtomHead({super.key});

  @override
  State<NuvolsBackButtomHead> createState() => _NuvolsBackButtomHeadState();
}

class _NuvolsBackButtomHeadState extends State<NuvolsBackButtomHead> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 34,
      left: 12,
      child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2.5,
                ),
              ],
            ),
            child: const Icon(
              Icons.chevron_left,
              size: 32,
            ),
          )),
    );
  }
}
