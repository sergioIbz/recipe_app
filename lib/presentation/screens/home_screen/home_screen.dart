import 'package:flutter/material.dart';
import 'widgets/categories_card.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_title.dart';
import 'widgets/recipe_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const CustomTitle('Categorias'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    ...List.generate(
                      10,
                      (index) => const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CategoriesCard(),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              const CustomTitle('Recetas'),
              Column(
                children: [
                  ...List.generate(
                    10,
                    (index) => Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 30).copyWith(
                        bottom: 15,
                      ),
                      child: const RecipeCard(),
                    ),
                  )
                ],
              )
            ]),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
            ),
            label: 'Agregar',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Usuario',
          ),
        ],
      ),
    );
  }
}
