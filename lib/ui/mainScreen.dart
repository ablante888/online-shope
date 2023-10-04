import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_shope/controllers/mainScreenProvider.dart';
import 'package:online_shope/ui/cartPage.dart';
import 'package:online_shope/ui/homePage.dart';
import 'package:online_shope/ui/profile.dart';
import 'package:online_shope/ui/searchPage.dart';
import 'package:online_shope/views/shared/appstyle.dart';
import 'package:online_shope/views/shared/bottomNav.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  List<Widget> pages = [
    homePage(),
    cartPage(),
    profilePage(),
    searchPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, value, child) {
        return Consumer<MainScreenNotifier>(
          builder: (context, value, child) {
            return Scaffold(
              backgroundColor: const Color(0xF6FFFFFF),
              body: pages[MainScreenNotifier().pageIndex],
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        bottomNavWidget(
                            icon: Icons.home,
                            ontap: () {
                              MainScreenNotifier.instance.pageIndex = 1;
                              // print(
                              //     'this is index ${mainScreenNotifier.pageIndex}');
                            }),
                        bottomNavWidget(
                            icon: Icons.search,
                            ontap: () {
                              MainScreenNotifier.instance.pageIndex = 2;
                              // MainScreenNotifier mainScreenNotifier =
                              //     MainScreenNotifier();
                              // mainScreenNotifier.pageIndex = 2;
                              // print(
                              //     'this is index ${mainScreenNotifier.pageIndex}');
                            }),
                        bottomNavWidget(
                            icon: Icons.add,
                            ontap: () {
                              MainScreenNotifier.instance.pageIndex = 3;
                              // MainScreenNotifier mainScreenNotifier =
                              //     MainScreenNotifier();
                              // mainScreenNotifier.pageIndex = 3;
                              // print(
                              //     'this is index ${mainScreenNotifier.pageIndex}');
                            }),
                        bottomNavWidget(
                            icon: Icons.shopping_cart,
                            ontap: () {
                              // MainScreenNotifier mainScreenNotifier =
                              //     MainScreenNotifier();
                              // mainScreenNotifier.pageIndex = 4;
                              // print(
                              //     'this is index ${mainScreenNotifier.pageIndex}');
                              MainScreenNotifier.instance.pageIndex = 4;
                            }),

                        // bottomNavWidget(
                        //     icon: Icons.person,
                        //     ontap: () {
                        //       MainScreenNotifier mainScreenNotifier =
                        //           MainScreenNotifier();
                        //       mainScreenNotifier.pageIndex = 5;
                        //       print(
                        //           'this is index ${mainScreenNotifier.pageIndex}');
                        //     }),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
