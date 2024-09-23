import 'package:flutter/material.dart';
import 'package:t_store_app3/utils/constants/colors.dart';
import 'package:t_store_app3/utils/devices/device_utility.dart';
import 'package:t_store_app3/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in Material widgets.
  /// To do that we need [PreferredSized] Widget and that's why created custom class.
  /// [PreferredSizeWidget]
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
