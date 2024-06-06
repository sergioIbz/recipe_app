import 'package:flutter/material.dart';
import 'package:recipe_app/config/theme/app_theme.dart';
// Asegúrate de tener este archivo y la clase AppTheme

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.book,
            size: 34,
            color: AppTheme.firstColor,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'CookBook',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_outlined,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.bookmark_border_outlined,
            size: 30,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
