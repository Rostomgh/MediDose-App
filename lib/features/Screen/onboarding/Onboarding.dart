// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../onboarding.dart/onboardingItem.dart';

class OnboardingP extends StatefulWidget {
  const OnboardingP({super.key});

  @override
  State<OnboardingP> createState() => _OnboardingPState();
}

class _OnboardingPState extends State<OnboardingP> {
  final controller = OboardingItem(); // Corrected to match the class name
  final pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: pageController,
        itemCount: controller.Item.length, // Corrected property name
        onPageChanged: (index) {
          setState(() {
            isLastPage = index == controller.Item.length - 1; // Corrected property name
          });
        },
        itemBuilder: (context, i) {
          return  Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Image.asset(controller.Item[i].image,width: 273,height: 255.99,),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  controller.Item[i].desc, // Corrected property name
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xFF2D2F2F), // Corrected color value
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 150),
              SmoothPageIndicator(
                controller: pageController,
                count: controller.Item.length, // Corrected property name
                effect: const WormEffect(
                  dotColor: Color.fromARGB(255, 235, 230, 185),
                  activeDotColor: Color(0xFF56A2A6), // Corrected color value
                  dotWidth: 10,
                  dotHeight: 10,
                ),
              ),
              const SizedBox(height: 45),
              ElevatedButton(
                onPressed: () {
                  if (isLastPage) {
                    Navigator.pushReplacementNamed(context, '/login');
                  } else {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeIn,
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xff56A2A6)
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 12),
                  ),
                ),
                child: Text(
                  isLastPage ? "SIGN IN" : "NEXT",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
