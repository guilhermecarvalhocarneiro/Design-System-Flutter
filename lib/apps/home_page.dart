import 'package:design_pinterest/apps/dashboard_page.dart';
import 'package:design_pinterest/apps/petsshops_page.dart';
import 'package:design_pinterest/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/routers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildCupertinoTabBar(),
    );
  }

  Widget _buildCupertinoTabBar() {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: CustomColors.navigatorButtomActive,
          inactiveColor: CustomColors.navigatorButtomInactive,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.pets)),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month)),
            BottomNavigationBarItem(icon: Icon(Icons.person_add_alt)),
            BottomNavigationBarItem(icon: Icon(Icons.person_off_outlined)),
          ],
          border: const Border(),
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                onGenerateRoute: RouteGenerator.generateRoute,
                builder: (context) => const NuvolsDashboardPage(),
              );
            case 1:
              return CupertinoTabView(
                onGenerateRoute: RouteGenerator.generateRoute,
                builder: (context) => const PetShopsListPage(),
              );
            case 2:
              return CupertinoTabView(
                onGenerateRoute: RouteGenerator.generateRoute,
                builder: (context) => const Scaffold(body: Center(child: Text("Agenda"))),
              );
            case 3:
              return CupertinoTabView(
                onGenerateRoute: RouteGenerator.generateRoute,
                builder: (context) => const Scaffold(body: Center(child: Text("Clientes"))),
              );
            default:
              return CupertinoTabView(
                onGenerateRoute: RouteGenerator.generateRoute,
                builder: (context) => const Scaffold(body: Center(child: Text("Perfil"))),
              );
          }
        });
  }
}
