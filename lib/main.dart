import 'package:animation_starter_code/custom_painter_example/bouncing_ball_animation.dart';
import 'package:animation_starter_code/explicit_examples/list_animation.dart';
import 'package:animation_starter_code/explicit_examples/loading_animation.dart';
import 'package:animation_starter_code/explicit_examples/login_animation.dart';
import 'package:animation_starter_code/implicit_examples/animated_color_pallete.dart';
import 'package:animation_starter_code/implicit_examples/animated_shopping_cart_button.dart';
import 'package:animation_starter_code/implicit_examples/animated_tween_animation_builder_example.dart';
import 'package:animation_starter_code/page_route_builder_animation/splash_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const PulsatingCircleAnimation()));
              },
              child: const Text('Pulsating Circle Animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShoppingCartButton()));
              },
              child: const Text('Shopping Cart Button'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedColorPalette()));
              },
              child: const Text('Animated Color Palette'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListAnimation()));
              },
              child: const Text('List Animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RadialProgressAnimation(
                              color: Colors.amber,
                              progress: 0.50,
                            )));
              },
              child: const Text('Radial Progress Animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreenAnimation()));
              },
              child: const Text('Login Screen Animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashAnimation()));
              },
              child: const Text('Splash Animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BouncingBallAnimation()));
              },
              child: const Text('bouncing ball animation'),
            ),
          ],
        ),
      ),
    );
  }
}
