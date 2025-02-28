import 'package:flutter/material.dart';
import 'package:marketi/core/helpers/routes.dart';

void main() {
  runApp(const Marketi());
}

class Marketi extends StatelessWidget {
  const Marketi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
     debugShowCheckedModeBanner: false,
     routerConfig: Routes.routes,
    );
  }
}
