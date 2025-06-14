import 'package:flutter/material.dart';
import 'package:rideshare_connect/data/notifiers.dart';
import 'package:rideshare_connect/home_page.dart';
import 'package:rideshare_connect/veiws/pages/home_page.dart';
import 'package:rideshare_connect/veiws/pages/profile_page.dart';

import '../widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage1(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget{
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('RideShare Connect'),
        ),
        body: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return pages.elementAt(selectedPage);
        },
        ),
        bottomNavigationBar: NavbarWidget()
    );
  }
}