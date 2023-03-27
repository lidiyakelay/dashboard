import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/widgets/large_screen.dart';

import 'helpers/responsive.dart';
import 'widgets/small_screen.dart';
import 'widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
final   GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: topNavigationBar(context,  scaffoldkey),
      drawer:  Drawer(),
      body: const ResponsiveWidget(
          largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}
