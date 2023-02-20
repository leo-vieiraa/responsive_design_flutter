import 'package:flutter/material.dart';
import 'package:responsive_design_flutter/responsive/desktop_body.dart';
import 'package:responsive_design_flutter/responsive/mobile_body.dart';
import 'package:responsive_design_flutter/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return const Scaffold(
      // For an easier responsiveness
      // backgroundColor:
      //     currentWidth < 600 ? Colors.deepPurple[300] : Colors.green[300],
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
