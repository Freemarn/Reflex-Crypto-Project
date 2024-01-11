import 'package:crypto_bomb/admin%20%20screen/active.dart';
import 'package:crypto_bomb/admin%20%20screen/admin_page.dart';
import 'package:crypto_bomb/admin%20%20screen/manage_deposits.dart';
import 'package:crypto_bomb/admin%20%20screen/manage_users.dart';
import 'package:crypto_bomb/admin%20%20screen/manage_withdrawal.dart';
import 'package:crypto_bomb/admin%20%20screen/packages.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class AdminPanel extends StatefulWidget {
   static const String routeName = '/admin';
  const AdminPanel({super.key});
  

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  
  late List<Widget> const_screens = [
    const AdminPage(),
    const ManageDeposits(),
    const ManageWithdrawal(),
    const InvestmentPackages(),
    const ActiveInvestment(),
    const ManageUsers(),
  ];

  int _selectedIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.headerTextColor,
          automaticallyImplyLeading: false,
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
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
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Flex',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.09,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: AppColors.fillAndBorderColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: AppColors.fillAndBorderColor)),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Manage Users',
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
                    width: MediaQuery.of(context).size.width * 0.11,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.fillAndBorderColor),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Admin',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.headerTextColor,
                          ),
                        ),
                        Icon(Icons.portrait_rounded)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.0123),
          child: Row(children: <Widget>[
            NavigationRail(
                minWidth: MediaQuery.of(context).size.width * .13,
                selectedIndex: _selectedIndex,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                destinations: <NavigationRailDestination>[
                  NavigationRailDestination(
                      icon: Row(
                        children: [
                          const Icon(
                            Icons.dashboard_outlined,
                            color: AppColors.cardTextColor,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.007,
                          ),
                          const Text('Dashboard',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.055,
                          ),
                        ],
                      ),
                      label: const Text('Dashboard')),
                 
               
              
                  NavigationRailDestination(
                      icon: Row(
                        children: [
                          const Icon(
                            Icons.add_card_outlined,
                            color: AppColors.cardTextColor,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.007,
                          ),
                          const Text('Deposits',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.055,
                          ),
                        ],
                      ),
                      label: const Text('Deposits')),
                  NavigationRailDestination(
                      icon: Row(
                        children: [
                          const Icon(Icons.receipt_outlined,
                              color: AppColors.cardTextColor),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.007,
                          ),
                          const Text('Withdrawals',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.055,
                          ),
                        ],
                      ),
                      label: const Text('Withdrawals')),


                      NavigationRailDestination(
                      icon: Row(
                        children: [
                          const Icon(
                            Icons.list,
                            color: AppColors.cardTextColor,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.007,
                          ),
                          const Text('Plans',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.055,
                          ),
                        ],
                      ),
                      label: const Text('Plans')),


                      NavigationRailDestination(
                      icon: Row(
                        children: [
                          const Icon(
                            Icons.blur_on_outlined,
                            color: AppColors.cardTextColor,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.007,
                          ),
                          const Text('Active Plans',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.055,
                          ),
                        ],
                      ),
                      label: const Text('Active Plans')),


                      NavigationRailDestination(
                      icon: Row(
                        children: [
                          const Icon(Icons.people,
                              color: AppColors.cardTextColor),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.007,
                          ),
                          const Text('Users',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.sidebarTextColor)),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.055,
                          ),
                        ],
                      ),
                      label: const Text('Users')),


                ],
                leading: Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.01,
                    top: MediaQuery.of(context).size.height * 0.03,
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 22,
                              child: CircleAvatar(
                                  radius: 18,
                                  child: Icon(
                                    Icons.person,
                                    color: AppColors.cardTextColor,
                                  )),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'EvianOptions',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: AppColors.headerTextColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Admin',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: AppColors.sidebarTextColor),
                                )
                              ],
                            )
                          ],
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
                )),
            Expanded(child: const_screens[_selectedIndex])
          ]),
        ));
  }
}
