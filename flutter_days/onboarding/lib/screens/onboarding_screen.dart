import 'package:flutter/material.dart';
import '../models/onboarding_model.dart';
import '../widgets/onboarding_page_item.dart';
import '../widgets/dots_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() => _currentPage = index);
              },
              itemBuilder: (context, index) {
                //constractor --> model
                return OnboardingPageItem(
                  data: onboardingData[index],
                  //onbording item
                  onContinue: () {
                    if (_currentPage < onboardingData.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    } else {
                      _pageController.jumpToPage(0);
                      setState(() {
                        _currentPage = 0;
                      });
                    }
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20),
          // constractor --> dots indicator --> widget
          DotsIndicator(
            count: onboardingData.length,
            currentIndex: _currentPage,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
