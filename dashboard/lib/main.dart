import 'package:dashboard/responsive/desktop_scaffold.dart';
import 'package:dashboard/responsive/mobile_scaffold.dart';
import 'package:dashboard/responsive/responsive_layout.dart';
import 'package:dashboard/responsive/tablet_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tableScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
