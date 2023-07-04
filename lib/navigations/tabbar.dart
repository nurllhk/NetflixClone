import 'package:flutter/material.dart';
import 'package:netflix/class/page.dart';

class TabbarItem extends StatefulWidget {
  const TabbarItem({super.key});

  @override
  State<TabbarItem> createState() => _TabbarItemState();
}

class _TabbarItemState extends State<TabbarItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: PageBar.selected,
          onTap: (int index) {
            setState(() {
              PageBar.selected = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_collection_outlined,
                ),
                label: 'Video'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download_outlined,
                ),
                label: 'Downloads'),
          ]),
      body: PageBar.tabbarPage[PageBar.selected],
    );
  }
}
