import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
// import 'package:running_app/features/Run/presentation/views/run_view.dart';
// import 'package:running_app/features/Run/presentation/widgets/hello.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  // void _onIntroEnd(context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(builder: (_) => const MyWidgetaaa()),
  //   );
  // }

  Widget buildFullscreenImage() {
    return SvgPicture.asset(
      'assets/images/photo.svg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget buildImage(String assetName, [double width = 50]) {
    return SvgPicture.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
        fontSize: 12.0, color: Color(0xffCDCDCD), fontWeight: FontWeight.w400);

    final pageDecoration = PageDecoration(
        titleTextStyle: const TextStyle(
            fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.white),
        bodyTextStyle: bodyStyle,
        bodyPadding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 16.0),
        pageColor: const Color(0xff2f3c50),
        imagePadding: EdgeInsets.zero,
        titlePadding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06));

    return ClipRRect(
      borderRadius: BorderRadius.circular(64),
      child: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: const Color(0xff2f3c50),
        allowImplicitScrolling: true,
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        globalHeader: const Align(
          alignment: Alignment.topRight,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 16, right: 16),
              // child: _buildImage(
              //   '',
              // ),
            ),
          ),
        ),
        globalFooter: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.064),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4 //   150
            ,
            height: MediaQuery.of(context).size.height * 0.069
            //56
            ,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff7b61ff)),
                    iconColor: MaterialStatePropertyAll(Color(0xff7b61ff))),
                child: const Text(
                  'Next →',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
        pages: [
          PageViewModel(
            title: "Fractional shares",

            body:
                "Instead of having to buy an entire share, invest any amount you want.",
            // image: _buildImage(''),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Learn as you go",
            body:
                "Download the Stockpile app and master the market with our mini-lesson.",
            // image: _buildImage(''),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "New",
            body:
                "Instead of having to buy an entire share, invest any amount you want.",
            // image: _buildImage(''),
            decoration: pageDecoration,
          ),
          // PageViewModel(
          //   title: "Kids and teens",
          //   body:
          //       "Kids and teens can track their stocks 24/7 and place trades that you approve.",
          //   image: _buildImage('img3.jpg'),
          //   decoration: pageDecoration,
          // ),
          // PageViewModel(
          //   title: "Full Screen Page",
          //   body:
          //       "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
          //   image: _buildFullscreenImage(),
          //   decoration: pageDecoration.copyWith(
          //     contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          //     fullScreen: true,
          //     bodyFlex: 2,
          //     imageFlex: 3,
          //     safeArea: 100,
          //   ),
          // ),
          // PageViewModel(
          //   title: "Another title page",
          //   body: "Another beautiful body text for this example onboarding",
          //   image: _buildImage('img2.jpg'),
          //   footer: ElevatedButton(
          //     onPressed: () {
          //       introKey.currentState?.animateScroll(0);
          //     },
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.lightBlue,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(8.0),
          //       ),
          //     ),
          //     child: const Text(
          //       'FooButton',
          //       style: TextStyle(color: Colors.white),
          //     ),
          //   ),
          //   decoration: pageDecoration.copyWith(
          //     bodyFlex: 6,
          //     imageFlex: 6,
          //     safeArea: 80,
          //   ),
          // ),
          // PageViewModel(
          //   title: "Title of last page - reversed",
          //   bodyWidget: const Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text("Click on ", style: bodyStyle),
          //       Icon(Icons.edit),
          //       Text(" to edit a post", style: bodyStyle),
          //     ],
          //   ),
          //   decoration: pageDecoration.copyWith(
          //     bodyFlex: 2,
          //     imageFlex: 4,
          //     bodyAlignment: Alignment.bottomCenter,
          //     imageAlignment: Alignment.topCenter,
          //   ),
          //   image: _buildImage('img1.jpg'),
          //   reverse: true,
          // ),
        ],
        // ignore: avoid_print
        onDone: () => print("fwfwf"),
        // ignore: avoid_print
        onSkip: () => print("fwfwf"), // You can override onSkip callback
        showSkipButton: false,
        showDoneButton: false,
        showNextButton: false,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
        //rtl: true, // Display as right-to-left
        back: const Icon(Icons.arrow_back),
        skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.only(bottom: 16),
        controlsPadding: const EdgeInsets.only(top: 40),
        // kIsWeb
        //     ? const EdgeInsets.all(12.0)
        //     : const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
          spacing: EdgeInsets.symmetric(horizontal: 3),
          size: Size(4.7, 4.0),
          color: Color(0xff694060),
          activeSize: Size(16.97, 4),
          activeColor: Color(0xfff14985),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Color(0xff2f3c50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home')),
//       body: Center(
//         child: Container(
//             width: 311,
//             height: 303,
//             decoration: const BoxDecoration(
//                 //borderRadius: BorderRadius.all(Radius.circular(64)),
//                 color: Color(0xff2f3c50)),
//             child: const ClipRRect(
//                 //  borderRadius: BorderRadius.circular(64),
//                 child: OnBoardingPage())),
//       ),
//     );
//   }
// }
