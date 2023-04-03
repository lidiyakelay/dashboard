import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/constants/controllers.dart';
import 'package:flutter_application_2/constants/styel.dart';
import 'package:flutter_application_2/widgets/custom_text.dart';
import 'package:get/get.dart';

class HorizontalMenuItems extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const HorizontalMenuItems(
      {super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        onTap;
      },
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
        color:menuController.isHovering(itemName)?lightGrey.withOpacity(.1):Colors.transparent ,
        child: Row(
          children: [
            Visibility(visible: menuController.isHovering(itemName)|| menuController.isActive(itemName),
            child: Container(width: 6, height: 40,color: dark,),
            maintainSize: true,
            maintainState: true,
            maintainAnimation: true,
        
            ),
            SizedBox(width: _width/80,),
            Padding(padding: EdgeInsets.all(16),
            child: menuController.returnIconFor(itemName),
           ),
           if(!menuController.isActive(itemName))
            Flexible(child: CustomText(text: itemName,color:menuController.isHovering(itemName)?dark:lightGrey ,),)
           else
           Flexible(child: CustomText(
            text:itemName,
            color: dark,
            size: 18,
            weight: FontWeight.bold,))

          ],
        ),
      )
      
      ),
    );
  }
}
