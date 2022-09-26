import 'package:design_pinterest/apps/dashboard_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(),
      bottomNavigationBar: _buildCupertinoTabBar(),
    );
  }

  Widget _buildCupertinoTabBar() {
    return CupertinoTabScaffold(
        resizeToAvoidBottomInset: false,
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.monetization_on_rounded)),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month)),
            BottomNavigationBarItem(icon: Icon(Icons.person_add_alt)),
            BottomNavigationBarItem(icon: Icon(Icons.person_off_outlined)),
          ],
          backgroundColor: Colors.transparent,
          border: const Border(),
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) => const CupertinoPageScaffold(child: NuvolsDashboardPage()),
              );
            case 1:
              return CupertinoTabView(
                builder: (context) =>
                    const CupertinoPageScaffold(child: Scaffold(body: Center(child: Text("Financeiro")))),
              );
            case 2:
              return CupertinoTabView(
                builder: (context) => const CupertinoPageScaffold(child: Scaffold(body: Center(child: Text("Agenda")))),
              );
            case 3:
              return CupertinoTabView(
                builder: (context) =>
                    const CupertinoPageScaffold(child: Scaffold(body: Center(child: Text("Clientes")))),
              );
            default:
              return CupertinoTabView(
                builder: (context) => const CupertinoPageScaffold(child: Scaffold(body: Center(child: Text("Perfil")))),
              );
          }
        });
  }
}
