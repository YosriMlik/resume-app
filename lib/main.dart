// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

//import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:resume_app/pages/contact_page.dart';
import 'package:resume_app/pages/experience_page.dart';
import 'package:resume_app/pages/home_page.dart';
import 'package:resume_app/pages/portfolio_page.dart';
import 'package:resume_app/pages/team_page.dart';
import 'package:resume_app/utils/AppColors.dart';
import 'package:resume_app/utils/AppIcons.dart';
import 'package:resume_app/widgets/navigation_menu_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedMenuIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedMenuIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 22.0;
    return Scaffold(
      backgroundColor: backgroundLight,
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                    child: Image.asset("assets/avatar0.png"),
                  ),
                  NavigationMenu(navHome,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 0, onClick: () {
                    _tabController.animateTo(0);
                  }),
                  NavigationMenu(navTime,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 1, onClick: () {
                    _tabController.animateTo(1);
                  }),
                  NavigationMenu(navPortfolio,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 2, onClick: () {
                    _tabController.animateTo(2);
                  }),
                  NavigationMenu(navContact,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 3, onClick: () {
                    _tabController.animateTo(3);
                  }),
                  NavigationMenu(navGroup,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 4, onClick: () {
                    _tabController.animateTo(4);
                  }),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    HomePage(),
                    ExperiencePage(),
                    PortfolioPage(),
                    ContactPage(),
                    TeamPage(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
