import 'package:flutter/material.dart';
import 'package:market_app/presentation/ui/resource/app_images.dart';
import 'package:market_app/presentation/widgets/onboarding_w.dart';
import 'package:market_app/presentation/ui/screens/splish/widget/dot_w.dart';
import '../../resource/app_colors.dart';
import '';
import '../verfications/widgets/login_screen.dart';
class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  final PageController _pageController=PageController(initialPage: 0);
  int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: (){
                  if(_currentPage<2){_pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut,)
                  ;}else{
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                  }
                },
                child: Padding(
                padding: const EdgeInsets.only(top:24,bottom: 84,right: 20),
                child: Text('Next',
                  style: TextStyle(color: AppColors.primary,fontSize: 18,fontWeight: FontWeight.bold),),
              ),),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (indexPage){
                  setState(() {
                    _currentPage=indexPage;
                  });
                  },
                children: [
                  WOnboarding(title: 'Discover New Products', description: """Many new products are discovered by people simply happening upon them while being out and about in the world.""",image: AppImages.onboarding1,),
                  WOnboarding(title: 'Earn Points For Shopping', description: """The purpose of reward points is to provide an incentive for customers to make repeat purchases.""", image: AppImages.onboarding2),
                  WOnboarding(title: 'Get Fast Local Delivery', description: """Wow Express offers cash on delivery services and fast delivery services so that your customers.""", image: AppImages.onboarding3),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children:
              List.generate(3, (index){
                return Wdot(color: _currentPage==index? AppColors.primary:AppColors.primary.withOpacity(0.5));
              })
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
