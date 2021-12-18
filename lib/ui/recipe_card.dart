import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../network/recipe_model.dart';


Widget recipeCard(APIRecipe recipe) {



}
Widget recipeStringCard(String image, String label) {
  return Card(
    elevation: 4.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6.0), topRight: Radius.circular(6.0)),
            child: CachedNetworkImage(
                imageUrl: recipe.image,
                height: 210,
                fit: BoxFit.fill)),
        const SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            // TODO: Replace with label from recipe
            label,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        // TODO: Replace Padding section with getCalories()
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            '320CAL',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 11,
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
      ],
    ),
  );
}