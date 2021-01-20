import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme_inherited_widget.dart';
import 'package:flip_card/flip_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/skills.dart';

void redirect(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    );
  } else {
    print('Sorry,could not launch $url');
  }
}

class ProjectsTab extends StatefulWidget {
  @override
  _ProjectsTabState createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab>
    with SingleTickerProviderStateMixin {
  @override
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

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
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
          child: Column(
            children: [
              // Center(
              //   child: Text(
              //     'Projects & Prototypes',
              //     textScaleFactor: 2.0,
              //     style: GoogleFonts.raleway(
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              Center(
                child: Wrap(
                  spacing: 60.0,
                  runSpacing: 50.0,
                  children: [
                    Card(
                      elevation: 5.0,
                      child: FlipCard(
                        direction: FlipDirection.VERTICAL,
                        back: Container(
                          width: 550.0,
                          height: 540.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 7.0,
                                  top: 7.0,
                                  right: 7.0,
                                ),
                                child: Container(
                                  width: 550.0,
                                  height: 300.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/Images/offshare.jpeg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 15.0,
                                  ),
                                  child: Text(
                                    'Sharestapp - Save & Share Instagram Post',
                                    style: GoogleFonts.raleway(
                                      color: Colors.blueAccent,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 16.0,
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: Text(
                                  'Sharestapp is an Open Source application (which will be available for free to every end users that let\'s you to directly share an image that you liked, from Instagram and gives you an opportunity to share that image to other applications in your mobile,Save to your local storage,and yes, if your a whatsapp user it also gives you a chance to directly upload that image as your whatsapp status and also share to your whatsapp contacts',
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.raleway(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 50.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      splashColor: Colors.greenAccent,
                                      onPressed: () {
                                        redirect(
                                            'https://play.google.com/store/apps/details?id=com.princeappstudio.sharestapp&hl=en_IN&gl=US');
                                      },
                                      icon: Image.asset(
                                        'assets/Images/playstore.png',
                                        height: 20.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    IconButton(
                                      splashColor: Colors.greenAccent,
                                      icon: Image.asset(
                                        'assets/Images/github.png',
                                        color: Colors.green,
                                        height: 26.0,
                                      ),
                                      onPressed: () {
                                        redirect(
                                            'https://github.com/VigneshHendrix/sharestapp-1');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        front: Container(
                          width: 550,
                          height: 540,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RotationTransition(
                                turns: rotationController,
                                child: Image.asset(
                                  'assets/Images/shareicon.png',
                                  height: 120.0,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Sharestapp',
                                style: GoogleFonts.raleway(
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Text(
                                'Click to know about Sharestapp',
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
