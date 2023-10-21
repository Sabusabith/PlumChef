final List<String> imageList = [
  "lib/Assets/Images/slide1.jpeg",
  "lib/Assets/Images/slide2.jpeg",
  "lib/Assets/Images/slide3.jpeg"
];

final List<Recipe> spicylist = [
  Recipe(
      title: "Spicy Noodles",
      description:
          "Delicious spicy, chilli noodles laced with bits of crispy, caramelised meat and pops of earthy cumin.",
      imageUrl: "lib/Assets/Images/spicy.jpeg",
      ingredients: [
        '250 g dry noodles',
        '200-250 g mince (ostrich/ beef or other meat of your choice)',
        '2 tbsp canola oil',
        '5 green onion stems',
        '3 cloves garlic, minced/ finely chopped',
        '½ tsp chilli flakes',
        '¼ tsp chilli powder (optional)',
        '½ tsp cumin',
        '2 tbsp light soy sauce',
        '1 tsp fish sauce',
        '1 tsp rice vinegar'
      ],
      steps: [
        '1. Mix all the sauce ingredients together.',
        '2. Bring water to boil in a pot and cook the noodles until tender but not overcooked. Drain the noodles and add toss with a few drops of oil to prevent it from sticking.',
        '3. In a large pan over medium high heat, add the oil. When hot, add the mince meat and break into pieces. Allow the mince to brown and get slightly crispy.',
        '4. Add the sliced green onions, garlic, chilli flakes, chilli powder and cumin and stir for a minute until fragrant.',
        '5. Toss in the noodles.',
        '6. Add the sauce ingredients and stir.',
        '7. Serve hot on the side of pak choy or broccoli.'
      ]),
  Recipe(
      title: "Avocado, Grapefruit and Fennel Salad ",
      description:
          "Delicious spicy, chilli noodles laced with bits of crispy, caramelised meat and pops of earthy cumin.",
      imageUrl: "lib/Assets/Images/salad.jpeg",
      ingredients: [
        '1 fennel bulb , thinly sliced',
        '1 avocado , peeled and cut into chunks',
        '2 pink grapefruits , peeled and segmented',
        '2 handfuls lightweight greens such as pea shoots , baby spinach, or watercress',
        'Shaved Parmegiano-Reggiano cheese',
        'Citrus dressing',
        '¼ cup fresh squeezed grapefruit juice',
        '¼ cup extra virgin olive oil',
        '2 tablespoons white balsamic vinegar',
        '1 tablespoon minced shallot',
        '1 teaspoon grainy brown mustard',
        '½ teaspoon kosher salt',
        'Freshy ground black pepper'
      ],
      steps: [
        'Combine the fennel, avocado, grapefruits and greens in a large salad bowl. Drizzle with 3-4 tablespoons of the citrus dressing and season with the salt and pepper. Adjust seasoning and top with the shaved pieces of the Parmesan.',
        'Add all of the ingredients to a jar with a fitted lid. Close the jar and shake well.'
      ]),
  Recipe(
      title: "Mojito",
      description:
          "The classic mojito is a refreshing summer favorite made with white rum, fresh mint leaves, lime juice (or wedges), sugar (simple syrup), and soda water for a little fizz.",
      imageUrl: "lib/Assets/Images/moj.jpeg",
      ingredients: [
        '6 Mint, leaves',
        '1/2 oz Lime juice',
        '1/2 oz Simple syrup',
        '2 oz Club soda'
      ],
      steps: [
        ""
      ]),
  Recipe(
      title: "Ham and Cheese Omelet",
      description:
          "This ham and cheese omelet is so tasty that you'll make it often, even if you're not short on time or energy. Toss some salty ham in there and you've got a winning meal, any time of the day",
      imageUrl: "lib/Assets/Images/om.jpeg",
      ingredients: [
        '1 Handful Ham, cooked',
        '6 Eggs, large',
        '1 Small pinch Mustard powder',
        '1 Sea salt and freshly ground black pepper',
        '1 Generous tbsp Butter, unsalted',
        '1 Handful Mature cheddar cheese',
        '1 1/2 tbsp Milk'
      ],
      steps: [
        ""
      ]),

      Recipe(
      title: "Medu Vada",
      description:
          "This ham and cheese omelet is so tasty that you'll make it often, even if you're not short on time or energy. Toss some salty ham in there and you've got a winning meal, any time of the day",
      imageUrl: "lib/Assets/Images/vada.jpeg",
      ingredients: [
        '1 tbsp Coriander, Leaves',
        '1 inch Ginger',
        '2 Green chili',
        '1 Onion, Medium Sized',
        '1 Salt',
        '1 Oil',
        '2 cup Urad dal (black split lentil)'
       
      ],
      steps: [
        ""
      ]),
];

final List<String> spicyText = [];

class Recipe {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;

  Recipe({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      title: json['title'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      ingredients: List<String>.from(json['ingredients']),
      steps: List<String>.from(json['steps']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'ingredients': ingredients,
      'steps': steps,
    };
  }
}
