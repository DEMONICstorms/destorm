import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color/color.dart';
import 'package:flutter_application_1/constant/image_location/image_location.dart';
import 'package:flutter_application_1/constant/text_string/text_strings.dart';
import 'package:flutter_application_1/feacture/models/models_onboarded/models_onboarded.dart';
import 'package:flutter_application_1/feacture/screens/onboardedscreen/onboardedscreenpage.dart';
import 'package:flutter_application_1/feacture/screens/signin.dart';

import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardedscreen extends StatefulWidget {
  const Onboardedscreen({Key? key}) : super(key: key);

  @override
  State<Onboardedscreen> createState() => _OnboardedscreenState();
}

final controller = LiquidController();
int currentpage = 0;
bool isLastPage = false;

class _OnboardedscreenState extends State<Onboardedscreen> {
  final pages = [
    Onboarded(
      model: Onboardedmodel(
        image: Assets.onboardimage1,
        color: onboardcolor1,
        firsthead: firsthead,
        titlesmall: titleSmall,
      ),
    ),
    Onboarded(
      model: Onboardedmodel(
          image: Assets.onboardimage2,
          color: onboardcolor2,
          firsthead: titleSmall,
          titlesmall: titleSmall),
    ),
    Onboarded(
      model: Onboardedmodel(
          image: Assets.onboardimage3,
          color: onboardcolor3,
          firsthead: firsthead,
          titlesmall: titleSmall),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        LiquidSwipe(
            onPageChangeCallback: onPageChangeCallback,
            pages: pages,
            liquidController: controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true),
        Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => controller.jumpToPage(page: 2),
              child: const Text("Skip"),
            )),
        Positioned(
            bottom: 50,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: pages.length,
              effect: WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                spacing: 10,
                dotColor: Colors.grey.shade300,
                activeDotColor: Colors.black,
              ),
            )),
        Positioned(
            bottom: 50,
            right: 30,
            child: ElevatedButton(
              onPressed: () async {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Signin()));
              },
              child: Text("get started",
                  style: Theme.of(context).textTheme.titleSmall),
            ))
      ]),

      /*hildren: [
              CarouselSlider(
                  items: myitems,
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 400,
                    onPageChanged: (index, reason) {
                      setState(() {
                        mycurrentindex = index;
                      });
                    },
                  )),
              AnimatedSmoothIndicator(
                activeIndex: mycurrentindex,
                count: myitems.length,
                effect: WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 10,
                    dotColor: Colors.grey.shade300,
                    activeDotColor: Colors.black12,
                    paintStyle: PaintingStyle.fill),*/
    );
  }

  onPageChangeCallback(int activePageIndex) {
    setState(() {
      currentpage = activePageIndex;
    });
  }
}
