import 'package:app/src/component/passport_steps/passport_first_step.dart';
import 'package:app/src/page/home/home_page.dart';
import 'package:flutter/material.dart';

class PassportFirstStepPage extends StatelessWidget {
  const PassportFirstStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Première demande de passeport',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const PageHome()),
            );
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: PassportFirstStep(),
      ),
    );
  }
}
