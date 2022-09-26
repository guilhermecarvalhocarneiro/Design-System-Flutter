import 'package:flutter/material.dart';

class NuvolsAppBar extends AppBar {
  NuvolsAppBar({Key? key})
      : super(
          key: key,
          iconTheme: const IconThemeData(
            color: Colors.black12,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        );
}
