import 'package:flutter/material.dart';

class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 20,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffd3e4fa),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 10, 20, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bitcoin Up ’n Up",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2378e9)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Text(
                            "300%",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2378e9)),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Text(
                            "ETF",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff6c6c6c)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 90),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color(0xffd3e4fa),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 10, 20, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bitcoin Up ’n Up",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2378e9)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Text(
                            "300%",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2378e9)),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Text(
                            "ETF",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff6c6c6c)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
