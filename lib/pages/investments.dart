import 'package:flutter/material.dart';
import 'package:ui_testing_application/pages/widgets/tabbar.dart';

class InvestmentPage extends StatefulWidget {
  const InvestmentPage({
    Key? key,
  }) : super(key: key);

  @override
  State<InvestmentPage> createState() => _InvestmentPageState();
}

class _InvestmentPageState extends State<InvestmentPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Investment",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2378e9)),
            ),
            const SizedBox(
              height: 25,
            ),
            TabBarRow(tabController: _tabController),
            TabBarBuild(tabController: _tabController)
          ],
        ),
      ),
    );
  }
}

class MesInvestissements extends StatelessWidget {
  const MesInvestissements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: const [
                InvestmentRow(
                  text1: "Dubai Holiday Trip",
                  text3: "paused",
                  text4: "\$ 2,768.90",
                  text5: "39%",
                  txtColor: Color(0xffe6b613),
                  iconColor: Colors.green,
                  icon: Icons.arrow_drop_up,
                ),
                Divider(
                  color: Color(0xffd3e4fa),
                  height: 40,
                  thickness: 1,
                ),
                InvestmentRow(
                  text1: "Buy Dream Home",
                  text3: "ON",
                  text4: "B\$ 36,900.90",
                  text5: "90%",
                  txtColor: Colors.green,
                  iconColor: Colors.green,
                  icon: Icons.arrow_drop_up,
                ),
                Divider(
                  color: Color(0xffd3e4fa),
                  height: 40,
                  thickness: 1,
                ),
                InvestmentRow(
                  text1: "Judith’s School Abroad",
                  text3: "ON",
                  text4: "\$ 11,500.00",
                  text5: "5.3%",
                  txtColor: Colors.green,
                  iconColor: Colors.red,
                  icon: Icons.arrow_drop_down,
                ),
                Divider(
                  color: Color(0xffd3e4fa),
                  height: 40,
                  thickness: 1,
                ),
                InvestmentRow(
                  text1: "Gramma’s Jubilee",
                  text3: "ON",
                  text4: "\$ 5,000.00",
                  text5: "2%",
                  txtColor: Colors.green,
                  iconColor: Colors.green,
                  icon: Icons.arrow_drop_up,
                ),
                Divider(
                  color: Color(0xffd3e4fa),
                  height: 40,
                  thickness: 1,
                ),
                InvestmentRow(
                  text1: "Dubai Holiday Trip",
                  text3: "paused",
                  text4: "\$ 2,768.90",
                  text5: "3.3%",
                  txtColor: Color(0xffe6b613),
                  iconColor: Colors.green,
                  icon: Icons.arrow_drop_up,
                ),
                Divider(
                  color: Color(0xffd3e4fa),
                  height: 40,
                  thickness: 1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class InvestmentRow extends StatelessWidget {
  const InvestmentRow(
      {Key? key,
      required this.text1,
      required this.text3,
      required this.text4,
      required this.text5,
      required this.txtColor,
      required this.icon,
      required this.iconColor})
      : super(key: key);
  final String text1;

  final String text3;
  final String text4;
  final String text5;
  final Color txtColor;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2378e9)),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Auto-invest",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2378e9)),
            ),
            Text(
              text3,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: txtColor,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              text4,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2378e9)),
            ),
            const SizedBox(
              height: 1,
            ),
            Row(
              children: [
                Icon(
                  icon,
                  color: iconColor,
                  size: 30,
                ),
                Text(
                  text5,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2378e9)),
                ),
              ],
            ),
          ],
        ),
        const Icon(
          Icons.keyboard_arrow_right,
          color: Color(0xff2378e9),
          size: 35,
        )
      ],
    );
  }
}
