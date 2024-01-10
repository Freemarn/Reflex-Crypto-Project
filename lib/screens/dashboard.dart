import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int _selectedIndex = 0;
  //NavigationRailLabelType labelType = NavigationRailLabelType.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.cardTextColor.withOpacity(0.1),
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
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: AppColors.fillAndBorderColor)),
                          filled: true,
                          fillColor: AppColors.fillAndBorderColor,
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
                    width: MediaQuery.of(context).size.width * 0.092,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.fillAndBorderColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            const Icon(
                              Icons.notifications_outlined,
                              size: 20,
                              color: AppColors.iconColor,
                            ),
                            Positioned(
                                right: 0,
                                left: 7,
                                bottom: 9,
                                child: Container(
                                  height: 7,
                                  width: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.mainColor,
                                  ),
                                ))
                          ],
                        ),
                        const Text(
                          'Notifications',
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
                    width: MediaQuery.of(context).size.width * 0.11,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.fillAndBorderColor),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage("lib/assets/images/p3.jpg"),
                        ),
                        Text(
                          'Jeff paul',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.headerTextColor,
                          ),
                        ),
                        Icon(
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
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.0123),
          child: Row(children: <Widget>[
            NavigationRail(
             
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
                        const Image(
                            image: AssetImage('lib/assets/images/sidebar.png')),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.007,
                        ),
                        const Text('Dashboard',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: AppColors.sidebarTextColor)),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.055,
                        ),
                      ],
                    ),
                    label: const Text('Dashboard')),
                const NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text('Second'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text('Third'),
                ),
              ],
              minWidth: MediaQuery.of(context).size.width * .13,
            )
          ]),
        ));
  }
}
