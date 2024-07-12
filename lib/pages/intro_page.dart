import "package:flutter/material.dart";
import "../components/my_button.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // logo
          Icon(Icons.shopping_bag,
              size: 72, color: Theme.of(context).colorScheme.inversePrimary),

          const SizedBox(height: 25),
          //titulo
          const Text("Minha Loja",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),

          const SizedBox(height: 25),

          Text("Produtos de Qualidade",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              )),

          const SizedBox(height: 25),
          //button
          MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: const Icon(Icons.arrow_forward)),
        ])));
  }
}
