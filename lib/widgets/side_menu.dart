import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/constants/controllers.dart';
import 'package:flutter_application_2/constants/styel.dart';
import 'package:flutter_application_2/routing/routes.dart';
import 'package:flutter_application_2/widgets/custom_text.dart';
import 'package:flutter_application_2/widgets/side_menu_item.dart';
import 'package:get/get.dart';

import '../helpers/responsive.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("icon.png"),
                    ),
                    Flexible(
                        child: CustomText(
                      text: "Dash",
                      size: 20,
                      weight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(
                      width: _width / 48,
                    )
                  ],
                ),
            
              ],
            ),
                SizedBox(
                  height: 40,
                ),
                Divider(
                  color: lightGrey.withOpacity(0.1),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: sideMenuItems
                      .map((itemName) => SideMenuItem(
                          itemName: itemName == AuthenticationPageRoute
                              ? "Log Out"
                              : itemName,
                          onTap: () {
                            if (itemName == AuthenticationPageRoute) {}
                            if (!menuController.isActive(itemName)) {
                              menuController.changeAtiveIte(itemName);
                              if (ResponsiveWidget.isSmallScreen(context)) {
                                Get.back();
                              }
                            }
                          }))
                      .toList(),
                )
        ],
      ),
    );
  }
}
