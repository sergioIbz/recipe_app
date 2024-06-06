import 'package:flutter/material.dart';

import 'package:recipe_app/config/theme/app_theme.dart';
import 'package:recipe_app/presentation/screens/home_screen/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppTheme.firstColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://forbes.co/_next/image?url=https%3A%2F%2Fcdn.forbes.co%2F2023%2F09%2FLucas-Mosna_GettyImages-1174648824-scaled.jpg%3Fv%3D25601709&w=3840&q=75'),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 80,
                child: Text(
                  'hamburguesa',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
              SizedBox(
                height: 33,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
