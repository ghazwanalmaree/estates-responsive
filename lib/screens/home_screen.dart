import 'package:estates_with_responsive/constants.dart';
import 'package:estates_with_responsive/responsive.dart';
import 'package:estates_with_responsive/widgets/menu/side_menu_section.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.mainSection}) : super(key: key);
  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDisktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) =>
                    IconButton(onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }, icon: Icon(Icons.menu)),
              )),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              if (Responsive.isDisktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenuSection(),
                ),
              Expanded(flex: 7, child: mainSection)
            ]),
          ),
        ),
      ),
    );
  }
}
