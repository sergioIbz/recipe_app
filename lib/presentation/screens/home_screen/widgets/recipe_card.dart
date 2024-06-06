import 'package:flutter/material.dart';
import 'package:recipe_app/config/theme/app_theme.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        Positioned(
          top: 15,
          right: 15,
          child: CircleAvatar(
            backgroundColor: AppTheme.firstColor,
            radius: 25,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        const Positioned(
          bottom: 15,
          left: 15,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://gastronomico.org.co/wp-content/uploads/2023/09/vertical-e1695315218112.webp',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'manuel medina',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 200,
      decoration: getBoxDecoration(),
      child: const Text(
        'Pizza italiana',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

BoxDecoration getBoxDecoration() => BoxDecoration(
      color: AppTheme.firstColor.withOpacity(0.2),
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: const NetworkImage(
          'https://2trendies.com/hero/2023/04/pizzapepperoni.jpg?width=1200',
        ),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
      ),
    );
