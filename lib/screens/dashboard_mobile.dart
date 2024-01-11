import 'package:crypto_bomb/screens/dashboard_page.dart';
import 'package:crypto_bomb/screens/deposit.dart';
import 'package:crypto_bomb/screens/profile_page.dart';
import 'package:crypto_bomb/screens/support_page.dart';
import 'package:crypto_bomb/screens/transaction_page.dart';
import 'package:crypto_bomb/screens/withdrawal_page.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DashboardMobile extends StatefulWidget {
  const DashboardMobile({super.key});

  @override
  State<DashboardMobile> createState() => _DashboardMobileState();
}

class _DashboardMobileState extends State<DashboardMobile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  late List<Widget> const_screens = [
    const DashboardPage(),
    const DepositPage(),
    const WithdrawalPage(),
    const TransactionsPage(),
    const SupportPage(),
    const ProfilePage(),
  ];

  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.selected;

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if (user == null) {
      return const Center(child: Text('No user logged in'));
    }
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: AppColors.headerTextColor,
          automaticallyImplyLeading: false,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(width: 40),
            const Text(
              'Crypto',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Flex',
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 40),
            Container(
              width: 140,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.fillAndBorderColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    radius: 15,
                    child: Icon(
                      Icons.person,
                      color: AppColors.cardTextColor,
                    ),
                  ),
                  Text(
                    auth.currentUser?.displayName ?? "",
                    style: const TextStyle(
                      fontSize: 13,
                      color: AppColors.headerTextColor,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 20,
                    color: AppColors.iconColor,
                  )
                ],
              ),
            ),
          ]),
        ),
        body: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.0123),
            child: Row(children: <Widget>[
              NavigationRail(
                labelType: NavigationRailLabelType.all,
                minWidth: 120,
                selectedIndex: _selectedIndex,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Icon(
                      Icons.dashboard_rounded,
                      size: 17,
                      color: AppColors.sidebarTextColor,
                    ),
                    label: Text(
                      'Dashboard',
                      style: TextStyle(
                          fontSize: 12, color: AppColors.sidebarTextColor),
                    ),
                  ),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.currency_bitcoin_outlined,
                        size: 17,
                        color: AppColors.sidebarTextColor,
                      ),
                      label: Text(
                        'Deposit',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.sidebarTextColor),
                      )),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.credit_score_rounded,
                        size: 17,
                        color: AppColors.sidebarTextColor,
                      ),
                      label: Text(
                        'Withdrawals',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.sidebarTextColor),
                      )),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.calendar_month_rounded,
                        size: 17,
                        color: AppColors.sidebarTextColor,
                      ),
                      label: Text(
                        'History',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.sidebarTextColor),
                      )),
                  NavigationRailDestination(
                      icon: Icon(
                        Icons.supervisor_account_rounded,
                        size: 17,
                        color: AppColors.sidebarTextColor,
                      ),
                      label: Text(
                        'Support',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.sidebarTextColor),
                      )),
                  NavigationRailDestination(
                      icon: Icon(Icons.account_circle_outlined,
                          size: 17, color: AppColors.sidebarTextColor),
                      label: Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.sidebarTextColor),
                      )),
                ],
                leading: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'welcome',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.headerTextColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                auth.currentUser?.displayName ?? "",
                                style: const TextStyle(
                                    fontSize: 13,
                                    color: AppColors.sidebarTextColor),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Expanded(child: const_screens[_selectedIndex])
            ])));
  }
}
