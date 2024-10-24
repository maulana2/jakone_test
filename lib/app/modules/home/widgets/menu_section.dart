import 'package:flutter/material.dart';
import 'package:jakone_pay_app_test/app/modules/home/widgets/menu_card.dart';
import 'package:jakone_pay_app_test/constants/app_images.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MenuCard(title: 'Maps', icon: AppImages.maps, onTap: () {}),
          MenuCard(title: 'Top Up', icon: AppImages.maps, onTap: () {}),
          MenuCard(title: 'Jakcard', icon: AppImages.maps, onTap: () {}),
          MenuCard(title: 'Event', icon: AppImages.maps, onTap: () {}),
        ],
      ),
    );
  }
}
