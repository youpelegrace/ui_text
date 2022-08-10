import 'package:flutter/material.dart';
import 'package:ui_testing_application/pages/home_page.dart';
import 'package:ui_testing_application/pages/investments.dart';
import 'package:ui_testing_application/pages/widgets/settings.dart';

class BottomNav extends StatefulWidget {
  BottomNav({
    Key? key,
    this.selectedIndex = 0,
  }) : super(key: key);
  int? selectedIndex;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  void onPageSelected(int index) {
    // _page = widget.selectedIndex ?? index;
    setState(() {
      widget.selectedIndex = index;
    });
  }

  int pageIndex = 0;

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    List<Widget> pageList = <Widget>[
      const HomePage(),
      const InvestmentPage(),
      const SettingScreen(),
    ];
    return Scaffold(
      key: _key,
      body: pageList[widget.selectedIndex ?? 0],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {
          setState(() {
            widget.selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Container(
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: const Color(0xff2378e9),
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
                  child: Row(
                    children: const [
                      Image(
                        image: AssetImage("images/h.png"),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/st.png"),
              ),
              label: ""),
          const BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("images/stt.png"),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
