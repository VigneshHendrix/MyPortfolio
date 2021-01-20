import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme_inherited_widget.dart';
import 'package:url_launcher/url_launcher.dart';

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

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
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
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              Image.asset(
                'assets/Images/cutpor.png',
                height: 250.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Vignesh Hendrix',
                textScaleFactor: 3.0,
                style: GoogleFonts.raleway(),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'DEVELOPER',
                    style: Theme.of(context).textTheme.caption,
                    textScaleFactor: 1.2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 700.0,
                height: 95.0,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    10.0,
                    10.0,
                    10.0,
                    10.0,
                  ),
                  child: Text(
                    'An Intermediate Level Competitive Programmer and a diligent person with good attitude,analytical,and communication skills,looking for a challenging and responsible role in an environment where I can showcase my skills and grow professionally and establish me as a Competent Software Engineer to improve the Human Lifestyle.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.deepPurpleAccent,
                      size: 22.0,
                    ),
                    label: Text(
                      'Github',
                    ),
                    onPressed: () {
                      redirect('https://github.com/VigneshHendrix');
                    },
                  ),
                  FlatButton.icon(
                    icon: FaIcon(
                      FontAwesomeIcons.hackerrank,
                      size: 20.0,
                      color: Colors.greenAccent[700],
                    ),
                    label: Text('Hackerrank'),
                    onPressed: () {
                      redirect('https://www.hackerrank.com/Vignesh_Hendrix');
                    },
                  ),
                  FlatButton.icon(
                    icon: FaIcon(
                      ThemeSwitcher.of(context).isDarkModeOn
                          ? FontAwesomeIcons.linkedin
                          : FontAwesomeIcons.linkedinIn,
                      size: 20.0,
                      color: Colors.blue[800],
                    ),
                    label: Text('Linkedin'),
                    onPressed: () {
                      redirect(
                          'https://www.linkedin.com/in/vignesh-k-53a0651b1/');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.pinkAccent[700],
                      size: 20.0,
                    ),
                    label: Text('Instagram'),
                    onPressed: () {
                      redirect('https://www.instagram.com/vignesh_hendrix/');
                    },
                  ),
                  FlatButton.icon(
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 20.0,
                      color: Colors.blue[700],
                    ),
                    label: Text(
                      'Facebook',
                    ),
                    onPressed: () {
                      redirect(
                          'https://www.facebook.com/profile.php?id=100012796634175');
                    },
                  ),
                  FlatButton.icon(
                    icon: FaIcon(
                      FontAwesomeIcons.youtube,
                      size: 20.0,
                      color: Colors.redAccent[700],
                    ),
                    label: Text('Youtube'),
                    onPressed: () {
                      redirect(
                          'https://youtube.com/channel/UCq2svALK86O5_VbPl0grNBw');
                    },
                  ),
                  FlatButton.icon(
                    icon: FaIcon(
                      FontAwesomeIcons.stackOverflow,
                      size: 20.0,
                      color: Colors.orange,
                    ),
                    label: Text('StackOverflow'),
                    onPressed: () {
                      redirect(
                          'https://stackoverflow.com/users/14502109/vignesh-hendrix');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
