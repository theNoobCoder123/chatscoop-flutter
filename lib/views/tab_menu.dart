import 'package:chat_scoop/constants.dart';
import 'package:chat_scoop/views/header_view.dart';
import 'package:chat_scoop/views/tab_selection_view.dart';
import 'package:flutter/material.dart';

class TabMenu extends StatefulWidget {
  const TabMenu({Key? key}) : super(key: key);

  @override
  State<TabMenu> createState() => _TabMenuState();
}

class _TabMenuState extends State<TabMenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
          maxWidth: MediaQuery.of(context).size.width,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      Variables.borderRadius,
                    ),
                  ),
                  color: AppColors.appDark,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: Variables.vPadBody,
                    left: Variables.hPadBody,
                    right: Variables.hPadBody,
                  ),
                  child: Column(
                    children: const <Widget> [
                      HeaderView(),
                      CustomTabBar(),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(Variables.borderRadius)),
                  color: AppColors.appGreen,
                ),
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          // Center is a layout widget. It takes a single child and positions it
                          // in the middle of the parent.
                          child: Column(
                            // Column is also a layout widget. It takes a list of children and
                            // arranges them vertically. By default, it sizes itself to fit its
                            // children horizontally, and tries to be as tall as its parent.
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                color: Colors.redAccent,
                                child: const Text("Hello, World! #1"),
                              ),
                              Text(
                                '_counter',
                                style: Theme.of(context).textTheme.headlineMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      // Center is a layout widget. It takes a single child and positions it
                      // in the middle of the parent.
                      child: Column(
                        // Column is also a layout widget. It takes a list of children and
                        // arranges them vertically. By default, it sizes itself to fit its
                        // children horizontally, and tries to be as tall as its parent.
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            color: Colors.redAccent,
                            child: const Text("Hello, World! #2"),
                          ),
                          Text(
                            "",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
