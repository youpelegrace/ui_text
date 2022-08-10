import 'package:flutter/material.dart';
import 'package:ui_testing_application/pages/investments.dart';

class TabBarRow extends StatelessWidget {
  const TabBarRow({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      tabs: const [
        Tab(
            child: Text(
          'Mes Investissements',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xff2378e9)),
        )),
        Tab(
          child: Text(
            'Mes Investissements',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xff2378e9)),
          ),
        ),
      ],
    );
  }
}

class TabBarBuild extends StatefulWidget {
  const TabBarBuild({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  State<TabBarBuild> createState() => _TabBarBuildState();
}

class _TabBarBuildState extends State<TabBarBuild> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: TabBarView(
        controller: widget._tabController,
        children: const [
          MesInvestissements(),
          MesInvestissements(),
        ],
      ),
    );
  }
}
