import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/about me.dart';

class SkillsTab extends StatefulWidget {
  @override
  _SkillsTabState createState() => _SkillsTabState();
}

class _SkillsTabState extends State<SkillsTab>
    with SingleTickerProviderStateMixin {
  AnimationController rotationController;
  ScrollController scrollcont = ScrollController();
  @override
  void initState() {
    rotationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 400),
      lowerBound: 100.0,
      upperBound: 200.0,
      value: 0.5,
    );
    rotationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      showTrackOnHover: true,
      radius: Radius.zero,
      hoverThickness: 3.0,
      controller: scrollcont,
      child: SingleChildScrollView(
        child: TweenAnimationBuilder(
          duration: Duration(milliseconds: 300),
          tween: Tween<double>(
            begin: 0,
            end: 1,
          ),
          builder: (BuildContext context, double val, Widget _child) {
            return Opacity(
              opacity: val,
              child: _child,
            );
          },
          child: SingleChildScrollView(
            child: Center(
              child: Wrap(
                runSpacing: 35.0,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 120.0,
                children: [
                  Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 330.0,
                        child: Column(
                          children: [
                            Text(
                              'Programming Languages',
                              textScaleFactor: 2.0,
                              style: GoogleFonts.quicksand(),
                            ),
                            RotationTransition(
                              turns: rotationController,
                              child: Image.asset(
                                'assets/Images/c.png',
                                width: 50.0,
                                height: 100.0,
                              ),
                            ),
                            RotationTransition(
                              turns: rotationController,
                              child: Image.asset(
                                'assets/Images/C++.png',
                                width: 55.0,
                                height: 122.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), //pg

                  Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 257.0,
                        width: 330.0,
                        child: Column(
                          children: [
                            Text(
                              'Frameworks & Tools',
                              textScaleFactor: 2.0,
                              style: GoogleFonts.quicksand(),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 35.0,
                              ),
                              child: RotationTransition(
                                turns: rotationController,
                                child: FlutterLogo(
                                  size: 65.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 330.0,
                        height: 257.0,
                        child: Column(
                          children: [
                            Text(
                              'Version Control',
                              textScaleFactor: 2.0,
                              style: GoogleFonts.quicksand(),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            RotationTransition(
                              turns: rotationController,
                              child: Image.asset(
                                'assets/Images/Git.png',
                                height: 60.0,
                                width: 100.0,
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            RotationTransition(
                              turns: rotationController,
                              child: FaIcon(
                                FontAwesomeIcons.github,
                                size: 55.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 257.0,
                        width: 330.0,
                        child: Column(
                          children: [
                            Text(
                              'Database',
                              textScaleFactor: 2.0,
                              style: GoogleFonts.quicksand(),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 35.0),
                                  child: RotationTransition(
                                    turns: rotationController,
                                    child: Image.asset(
                                      'assets/Images/mysqldol.png',
                                      height: 50.0,
                                      width: 100.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 257.0,
                        width: 330.0,
                        child: Column(
                          children: [
                            Text(
                              'Web Languages',
                              textScaleFactor: 2.0,
                              style: GoogleFonts.quicksand(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35.0),
                              child: RotationTransition(
                                turns: rotationController,
                                child: Image.asset(
                                  'assets/Images/darticon.png',
                                  width: 55.0,
                                  height: 122.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), //pg
                  Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 257.0,
                        width: 330.0,
                        child: Column(
                          children: [
                            Text(
                              'UI/UX Design',
                              textScaleFactor: 2.0,
                              style: GoogleFonts.quicksand(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35.0),
                              child: RotationTransition(
                                turns: rotationController,
                                child: Image.asset(
                                  'assets/Images/figma.png',
                                  width: 55.0,
                                  height: 122.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), //pg
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
