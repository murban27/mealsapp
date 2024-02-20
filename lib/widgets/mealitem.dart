import 'package:flutter/material.dart';
import 'package:mealsapp/Screen/mealitem_detail.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/widgets/meal_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MailItem extends StatelessWidget {
  const MailItem({super.key, required this.meal});
  String get ComplexityText {
    final text = meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
    return text;
  }

  String get AffordabilityText {
    final text = meal.complexity.name[0].toUpperCase() +
        meal.affordability.name.substring(1);
    return text;
  }

  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
          onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MealItemDetail(
                    itemname: meal.title,
                    imageurl: meal.imageUrl,
                  ),
                ),
              ),
          child: Stack(
            children: [
              CachedNetworkImage(
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  imageUrl: meal.imageUrl,
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black54,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 44),
                  child: Column(
                    children: [
                      Text(
                        meal.title,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MealItemTrait(
                              icon: Icons.schedule,
                              label: '${meal.duration} min'),
                          const SizedBox(width: 15),
                          MealItemTrait(
                              icon: Icons.work, label: ComplexityText),
                          const SizedBox(width: 15),
                          MealItemTrait(
                              icon: Icons.attach_money,
                              label: AffordabilityText)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
