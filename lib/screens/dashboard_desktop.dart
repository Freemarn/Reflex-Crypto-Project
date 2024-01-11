import 'package:crypto_bomb/screens/dashboard_page.dart';
import 'package:crypto_bomb/screens/deposit.dart';
import 'package:crypto_bomb/screens/profile_page.dart';
import 'package:crypto_bomb/screens/support_page.dart';
import 'package:crypto_bomb/screens/transaction_page.dart';
import 'package:crypto_bomb/screens/withdrawal_page.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DashboardDesktop extends StatefulWidget {
  const DashboardDesktop({super.key});

  @override
  State<DashboardDesktop> createState() => _DashboardDesktopState();
}

class _DashboardDesktopState extends State<DashboardDesktop> {
  late List<Widget> const_screens = [
    const DashboardPage(),
    const DepositPage(),
    const WithdrawalPage(),
    const TransactionsPage(),
    const SupportPage(),
    const ProfilePage(),
  ];

  int _selectedIndex = 0;
  //NavigationRailLabelType labelType = NavigationRailLabelType.all;

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if (user == null) {
      return const Center(child: Text('No user logged in'));
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          toolbarHeight: MediaQuery.of(context).size.height * 0.08,
          //backgroundColor: AppColors.mainColor.withOpacity(0.6),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.004,
                  ),
                  const Text(
                    'Crypto',
                    style: TextStyle(
                        color: AppColors.headerTextColor,
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.09,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.24,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: AppColors.fillAndBorderColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: AppColors.fillAndBorderColor)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'search for events here',
                          hintStyle: const TextStyle(
                            color: AppColors.cardTextColor,
                            fontSize: 12,
                          ),
                          suffixIcon: const Icon(
                            Icons.search_outlined,
                            color: AppColors.iconColor,
                          )),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.fillAndBorderColor),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: [
                            Icon(
                              Icons.notifications_outlined,
                              size: 20,
                              color: AppColors.iconColor,
                            ),
                          ],
                        ),
                        Text(
                          'History',
                          style: TextStyle(
                              fontSize: 13, color: AppColors.cardTextColor),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: AppColors.fillAndBorderColor,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.13,
                    height: MediaQuery.of(context).size.height * 0.06,
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
                          // backgroundImage:
                          //     AssetImage("lib/assets/images/p3.jpg"),
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
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left:5),
          child: Row(
           
            children: <Widget>[
            NavigationRail(
                minWidth: 160,
                selectedIndex: _selectedIndex,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                      icon: Row(
                        children: [
                           Icon(
                            Icons.dashboard_rounded,
                            color: AppColors.cardTextColor,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('Dashboard',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      label:  Text('Dashboard')),
                  NavigationRailDestination(
                      icon: Row(
                        children: [
                          Icon(
                            Icons.currency_bitcoin_outlined,
                            color: AppColors.cardTextColor,
                          ),
                           SizedBox(
                            width: 3,
                          ),
                          Text('Deposit',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      label: Text('Deposit')),
                  NavigationRailDestination(
                      icon: Row(
                        children: [
                           Icon(
                            Icons.credit_score_rounded,
                            color: AppColors.cardTextColor,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('Withdraw',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      label:  Text('Withdraw')),
                  NavigationRailDestination(
                      icon: Row(
                        children: [
                           Icon(
                            Icons.calendar_month_rounded,
                            color: AppColors.cardTextColor,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                           Text('History',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      label:  Text('History')),
                  NavigationRailDestination(
                      icon: Row(
                        children: [
                          Icon(
                            Icons.supervisor_account_rounded,
                            color: AppColors.cardTextColor,
                          ),
                           SizedBox(
                            width: 3,
                          ),
                          Text('Support',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      label:  Text('Support')),
                  NavigationRailDestination(
                      icon: Row(
                        children: [
                          Icon(Icons.account_circle_outlined,
                              color: AppColors.cardTextColor),
                          SizedBox(
                            width:3,
                          ),
                          Text('Profile',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      label:  Text('Profile')),
                ],
                leading: Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.01,
                    top: MediaQuery.of(context).size.height * 0.03,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                       Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                child: CircleAvatar(
                                  radius: 18,
                                  child: Icon(
                                    Icons.person,
                                    color: AppColors.cardTextColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'welcome',
                                    style: TextStyle(
                                        fontSize: 16,
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
                        
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DepositPage()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.14,
                            height: MediaQuery.of(context).size.height * 0.065,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    width: 1, color: AppColors.mainColor)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.credit_card,
                                  color: AppColors.mainColor,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Deposit',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: AppColors.mainColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const WithdrawalPage()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.14,
                            height: MediaQuery.of(context).size.height * 0.065,
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.currency_exchange,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'withdraw',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.033,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width * 0.135,
                          color: AppColors.sidebarTextColor.withOpacity(0.4),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.021,
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(child: const_screens[_selectedIndex])
          ]),
        )
        );
  }
}
