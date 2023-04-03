import 'package:flutter/material.dart';
import 'package:flutter_application_2/routing/routes.dart';
import 'package:get/get.dart';

import '../constants/styel.dart';

class MenuControllers extends GetxController {
  static MenuControllers instance = Get.find();
  var activeItem = OverViewPageRoute.obs;
  var hoverItem = "".obs;


  changeAtiveIte(String itemName) {
    activeItem.value = itemName;
  }

  isActive(String itemName) {
    activeItem.value == itemName;
  }

  isHovering(String itemName) {
    hoverItem == itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case DriversPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case ClientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case OverViewPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    }
    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
