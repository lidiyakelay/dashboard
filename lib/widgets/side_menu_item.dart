import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/widgets/horizontal_menu_item.dart';
import 'package:flutter_application_2/widgets/vertical_menu_item.dart';

import '../helpers/responsive.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustom(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }
    return HorizontalMenuItems(itemName: itemName, onTap: onTap);
  }
}
 