import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/theme_inherited_widget.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/about me.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/achievements.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  ScrollController scrollcont = ScrollController();
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    SkillsTab(),
    ProjectsTab(),
    // AchievementsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Vignesh\'s Portfoli',
                style: GoogleFonts.raleway(
                  fontSize: 15.0,
                  letterSpacing: 1.0,
                  color: ThemeSwitcher.of(context).isDarkModeOn
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              TextSpan(
                text: 'o',
                style: GoogleFonts.raleway(
                  color: Color(0xFF50AFC0),
                  fontSize: 15.0,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn
                ? Icon(Icons.wb_sunny)
                : Image.asset(
                    Assets.moon,
                    height: 20,
                    width: 20,
                  ),
            onPressed: () {
              ThemeSwitcher.of(context).switchDarkMode();
            },
          )
        ],
      ),
      body: (_selectedIndex == 0)
          ? Scrollbar(
              controller: scrollcont,
              child: ListView(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'vigneshvicky8384@gmail.com',
                                  style: GoogleFonts.quicksand(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: tabWidgets.elementAt(_selectedIndex),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : tabWidgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueGrey,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            title: Text(
              'Profile',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: Icon(
              Icons.account_circle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bolt,
              size: 25.0,
            ),
            title: Text(
              'Skills',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.rocket,
            ),
            title: Text(
              'Projects & Prototypes',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // BottomNavigationBarItem(
          //   icon: FaIcon(
          //     FontAwesomeIcons.trophy,
          //   ),
          //   title: Text(
          //     'Accomplishments',
          //     style: GoogleFonts.raleway(
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // )
        ],
        selectedItemColor: Theme.of(context).accentColor,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
