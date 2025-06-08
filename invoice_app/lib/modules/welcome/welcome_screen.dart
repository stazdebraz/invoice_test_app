import 'package:auto_route/auto_route.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/core/config/router/app_router.gr.dart';
import 'package:invoice_app/core/extensions/double_extansions.dart';
import 'package:invoice_app/ui/app_button.dart';

@RoutePage()
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late ConfettiController _confettiTopLeftController;
  late ConfettiController _confettiTopRightController;

  @override
  void didChangeDependencies() {
    _confettiTopLeftController =
        ConfettiController(duration: const Duration(seconds: 3));
    _confettiTopRightController =
        ConfettiController(duration: const Duration(seconds: 3));
    _confettiTopLeftController.play();
    _confettiTopRightController.play();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _confettiTopLeftController.dispose();
    _confettiTopRightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                10.verticalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        'Welcome to the world of lightning-fast invocing',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat')),
                    10.verticalSpace,
                    RichText(
                      text: const TextSpan(
                          children: [
                            TextSpan(text: 'Create up to '),
                            TextSpan(
                                text: '2 free invoices ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'and \n'),
                            TextSpan(
                                text: 'send 1 ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'as part of yur free trial.'),
                          ],
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat')),
                    ),
                  ],
                ),
                10.verticalSpace,
                AppButton(
                  text: 'Create New Invoice',
                  onPressed: () {
                    context.router.popAndPush(const DashboardRoute());
                  },
                  isMainOrange: true,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: ConfettiWidget(
              blastDirectionality: BlastDirectionality.explosive,
              particleDrag: 0.05,
              emissionFrequency: 0.05,
              numberOfParticles: 20,
              gravity: 0.1,
              shouldLoop: false,
              colors: const [Colors.green, Colors.blue, Colors.pink],
              confettiController: _confettiTopLeftController,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: ConfettiWidget(
              blastDirectionality: BlastDirectionality.explosive,
              particleDrag: 0.05,
              emissionFrequency: 0.05,
              numberOfParticles: 20,
              gravity: 0.1,
              shouldLoop: false,
              colors: const [Colors.green, Colors.blue, Colors.pink],
              confettiController: _confettiTopRightController,
            ),
          )
        ],
      ),
    );
  }
}
