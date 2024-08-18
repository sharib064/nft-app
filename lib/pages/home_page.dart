import 'package:flutter/material.dart';
import 'package:nftapp/components/my_appbar.dart';
import 'package:nftapp/components/my_bottombar.dart';
import 'package:nftapp/components/my_tabbar.dart';
import 'package:nftapp/tabs/recent_tab.dart';
import 'package:nftapp/tabs/top_tab.dart';
import 'package:nftapp/tabs/trending_tab.dart';
import 'package:nftapp/theme/glass_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _searchButtonTab() {}
  int _currentIndex = 0;
  void handleBottomIndexChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List tabOptions = [
    ["Recent", const RecentTab()],
    ["Trending", const TrendingTab()],
    ["Top", const TopTab()],
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child:
              MyBottombar(index: _currentIndex, onTap: handleBottomIndexChange),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            MyAppbar(
              title: "Explore Collections",
              onTap: () => _searchButtonTab(),
            ),
            SizedBox(
              height: 500,
              child: MyTabbar(
                tabOptions: tabOptions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
