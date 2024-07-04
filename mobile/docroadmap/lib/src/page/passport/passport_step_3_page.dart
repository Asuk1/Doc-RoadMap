import 'package:app/src/component/passport_steps/passport_thrid_step.dart';
import 'package:flutter/material.dart';


class PassportThirdStepPage extends StatelessWidget {
  final VoidCallback onValidated;

  const PassportThirdStepPage({super.key, required this.onValidated});


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
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: PassportThirdStep(onValidated: onValidated),
      ),
    );
  }
}
