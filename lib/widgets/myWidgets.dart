import 'dart:math';
import 'package:DevJobs/onboardscreens/firstonboard.dart';
import 'package:DevJobs/onboardscreens/secondonboard.dart';
import 'package:DevJobs/onboardscreens/thirdonboard.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';




//This is where i clipped my container

class FirstClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 375;
    final double _yScaling = size.height / 443;
    path.lineTo(131.49 * _xScaling,-263.697 * _yScaling);
    path.cubicTo(204.739 * _xScaling,-281.168 * _yScaling,283.07 * _xScaling,-242.917 * _yScaling,340.717 * _xScaling,-194.466 * _yScaling,);
    path.cubicTo(396.176 * _xScaling,-147.853 * _yScaling,437.809 * _xScaling,-78.5269 * _yScaling,438 * _xScaling,-6.08054 * _yScaling,);
    path.cubicTo(438.174 * _xScaling,60.0576 * _yScaling,359.412 * _xScaling,98.0875 * _yScaling,341.656 * _xScaling,161.798 * _yScaling,);
    path.cubicTo(322.465 * _xScaling,230.653 * _yScaling,375.898 * _xScaling,313.664 * _yScaling,332.958 * _xScaling,370.808 * _yScaling,);
    path.cubicTo(289.132 * _xScaling,429.131 * _yScaling,204.317 * _xScaling,445.782 * _yScaling,131.49 * _xScaling,441.484 * _yScaling,);
    path.cubicTo(60.8174 * _xScaling,437.313 * _yScaling,-0.325058 * _xScaling,394.843 * _yScaling,-53.412 * _xScaling,348.006 * _yScaling,);
    path.cubicTo(-102.397 * _xScaling,304.787 * _yScaling,-142.417 * _xScaling,250.9 * _yScaling,-156.76 * _xScaling,187.169 * _yScaling,);
    path.cubicTo(-170.308 * _xScaling,126.971 * _yScaling,-156.262 * _xScaling,64.3523 * _yScaling,-129.795 * _xScaling,8.61429 * _yScaling,);
    path.cubicTo(-105.759 * _xScaling,-42.0022 * _yScaling,-54.7271 * _xScaling,-68.9667 * _yScaling,-15.9326 * _xScaling,-109.398 * _yScaling,);
    path.cubicTo(34.5527 * _xScaling,-162.014 * _yScaling,60.5601 * _xScaling,-246.779 * _yScaling,131.49 * _xScaling,-263.697 * _yScaling,);
    path.cubicTo(131.49 * _xScaling,-263.697 * _yScaling,131.49 * _xScaling,-263.697 * _yScaling,131.49 * _xScaling,-263.697 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    
    return true;
  }
  
}

class SecondClip extends CustomClipper<Path> {
   @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 375;
    final double _yScaling = size.height / 427;
    path.lineTo(196.931 * _xScaling,-45.8855 * _yScaling);
    path.cubicTo(260.533 * _xScaling,-55.8716 * _yScaling,315.511 * _xScaling,-112.131 * _yScaling,378.546 * _xScaling,-99.034 * _yScaling,);
    path.cubicTo(447.136 * _xScaling,-84.7825 * _yScaling,515.586 * _xScaling,-38.9187 * _yScaling,542.248 * _xScaling,25.8641 * _yScaling,);
    path.cubicTo(568.823 * _xScaling,90.4371 * _yScaling,551.257 * _xScaling,170.299 * _yScaling,513.586 * _xScaling,229.093 * _yScaling,);
    path.cubicTo(479.906 * _xScaling,281.659 * _yScaling,404.726 * _xScaling,283.273 * _yScaling,354.001 * _xScaling,319.667 * _yScaling,);
    path.cubicTo(318.798 * _xScaling,344.923 * _yScaling,304.807 * _xScaling,397.186 * _yScaling,263.074 * _xScaling,408.826 * _yScaling,);
    path.cubicTo(221.419 * _xScaling,420.443 * _yScaling,182.624 * _xScaling,378.447 * _yScaling,139.393 * _xScaling,379.52 * _yScaling,);
    path.cubicTo(66.144 * _xScaling,381.339 * _yScaling,-7.54578 * _xScaling,450.771 * _yScaling,-72.6553 * _xScaling,417.163 * _yScaling,);
    path.cubicTo(-132.55 * _xScaling,386.246 * _yScaling,-144.317 * _xScaling,300.126 * _yScaling,-144.991 * _xScaling,232.726 * _yScaling,);
    path.cubicTo(-145.627 * _xScaling,169.104 * _yScaling,-112.426 * _xScaling,111.144 * _yScaling,-76.2376 * _xScaling,58.8129 * _yScaling,);
    path.cubicTo(-44.5396 * _xScaling,12.9756 * _yScaling,-3.43095 * _xScaling,-27.2857 * _yScaling,48.6077 * _xScaling,-47.2308 * _yScaling,);
    path.cubicTo(95.7303 * _xScaling,-65.2917 * _yScaling,147.077 * _xScaling,-38.0579 * _yScaling,196.931 * _xScaling,-45.8855 * _yScaling,);
    path.cubicTo(196.931 * _xScaling,-45.8855 * _yScaling,196.931 * _xScaling,-45.8855 * _yScaling,196.931 * _xScaling,-45.8855 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    
    return true;
  }
  
}


class ThirdClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 357;
    final double _yScaling = size.height / 407;
    path.lineTo(210.939 * _xScaling,-179.589 * _yScaling);
    path.cubicTo(260.12 * _xScaling,-175.969 * _yScaling,307.637 * _xScaling,-206.161 * _yScaling,355.582 * _xScaling,-194.62 * _yScaling,);
    path.cubicTo(410.379 * _xScaling,-181.43 * _yScaling,486.264 * _xScaling,-165.243 * _yScaling,498.809 * _xScaling,-110.294 * _yScaling,);
    path.cubicTo(512.935 * _xScaling,-48.4224 * _yScaling,414.164 * _xScaling,-7.54138 * _yScaling,412.778 * _xScaling,55.9074 * _yScaling,);
    path.cubicTo(411.443 * _xScaling,117.01 * _yScaling,502.975 * _xScaling,157.912 * _yScaling,491.637 * _xScaling,217.968 * _yScaling,);
    path.cubicTo(481.334 * _xScaling,272.536 * _yScaling,409.459 * _xScaling,288.874 * _yScaling,363.039 * _xScaling,319.352 * _yScaling,);
    path.cubicTo(313.933 * _xScaling,351.595 * _yScaling,269.026 * _xScaling,393.499 * _yScaling,210.939 * _xScaling,402.269 * _yScaling,);
    path.cubicTo(149.222 * _xScaling,411.587 * _yScaling,80.2404 * _xScaling,406.417 * _yScaling,29.7906 * _xScaling,369.666 * _yScaling,);
    path.cubicTo(-19.9037 * _xScaling,333.465 * _yScaling,-27.0669 * _xScaling,264.165 * _yScaling,-54.3064 * _xScaling,209.047 * _yScaling,);
    path.cubicTo(-79.6648 * _xScaling,157.735 * _yScaling,-120.75 * _xScaling,112.965 * _yScaling,-125.269 * _xScaling,55.9074 * _yScaling,);
    path.cubicTo(-129.925 * _xScaling,-2.87517 * _yScaling,-112.045 * _xScaling,-62.5871 * _yScaling,-79.7272 * _xScaling,-111.909 * _yScaling,);
    path.cubicTo(-48.2125 * _xScaling,-160.005 * _yScaling,-2.54576 * _xScaling,-203.818 * _yScaling,53.4578 * _xScaling,-216.858 * _yScaling,);
    path.cubicTo(106.907 * _xScaling,-229.304 * _yScaling,156.208 * _xScaling,-183.618 * _yScaling,210.939 * _xScaling,-179.589 * _yScaling,);
    path.cubicTo(210.939 * _xScaling,-179.589 * _yScaling,210.939 * _xScaling,-179.589 * _yScaling,210.939 * _xScaling,-179.589 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    
    return true;
  }
  
}

//Code for my Onboarding
class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 5.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 20.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return new Container(
      width: _kDotSpacing,
      child: new Center(
        child: Material(
          color: Color.fromRGBO(color.red, color.green, color.blue, max(selectedness, 0.5)),
          type: MaterialType.circle,
          child: new Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  final _controller = new PageController();

  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);

  final List<Widget> _pages = <Widget>[
   Firstonboard(),
   Secondboard(),
   Thirdboard()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new IconTheme(
        data: new IconThemeData(color: Hexcolor('#63B7AF'),),
        child: new Stack(
          children: <Widget>[
            new PageView.builder(
              physics: new AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
            ),
            new Positioned(
              bottom: 15.0,
              left: 0.0,
              right: 0.0,
                child: new Center(
                  child: new DotsIndicator(
                    color: Hexcolor('#63B7AF'),
                    controller: _controller,
                    itemCount:  _pages.length,
                    onPageSelected: (int page) {
                      _controller.animateToPage(
                        page,
                        duration: _kDuration,
                        curve: _kCurve,
                      );
                    },
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}






