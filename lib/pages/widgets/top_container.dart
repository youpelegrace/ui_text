import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ui_testing_application/routing/routes.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/homeui.png"),
          fit: BoxFit.contain,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 60, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'images/arroww.svg',
              color: const Color(0xfff7d73a),
            ),
            const SizedBox(
              height: 13,
            ),
            const Text(
              "Investor",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 36,
            ),
            const Text(
              "Solde d’Investissement",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  "\$0.00",
                  style: TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfff7d73a)),
                ),
                SizedBox(
                  width: 24,
                ),
                Icon(Icons.visibility_off_outlined, color: Colors.white),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteClass.getInvestmentRoute());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xffffffff),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(30, 15, 45, 15),
                      child: Text(
                        "My investments",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff2378e9)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 19,
                ),
                const CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Color(0xff2378e9),
                    size: 35,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
