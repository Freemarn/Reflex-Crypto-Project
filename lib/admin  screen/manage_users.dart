import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class ManageUsers extends StatefulWidget {
  const ManageUsers({super.key});

  @override
  State<ManageUsers> createState() => _ManageUsersState();
}

class _ManageUsersState extends State<ManageUsers> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cardTextColor.withOpacity(0.2),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Manage Users',
                  style: TextStyle(
                      color: AppColors.headerTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.83,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: const BorderSide(
                                                  width: 2,
                                                  color: AppColors
                                                      .fillAndBorderColor)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              borderSide: const BorderSide(
                                                  width: 2,
                                                  color: AppColors
                                                      .fillAndBorderColor)),
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: 'Username',
                                          hintStyle: const TextStyle(
                                            color: AppColors.cardTextColor,
                                            fontSize: 12,
                                          ),
                                          suffixIcon: const Icon(
                                            Icons.search_outlined,
                                            color: AppColors.iconColor,
                                          )),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.12,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: AppColors.mainColor),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Copy',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'CSV',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Print',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              DataTable(
                                columns: [
                                  DataColumn(
                                      label: Checkbox(
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value ?? false;
                                            });
                                          })),
                                  const DataColumn(
                                      label: Text('Client Name',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  const DataColumn(
                                      label: Text('Username',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  const DataColumn(
                                      label: Text('Email',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  const DataColumn(
                                      label: Text('Phone',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  const DataColumn(
                                      label: Text('Status',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  const DataColumn(
                                      label: Text('Date\nRegistered',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    DataCell(Checkbox(
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value ?? false;
                                          });
                                        })),
                                    const DataCell(Text('jeff coker')),
                                    const DataCell(Text('Uranium')),
                                    const DataCell(Text('coker@gmail.com')),
                                    const DataCell(Text('123456789')),
                                    DataCell(
                                      Container(
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.blueAccent),
                                        child: const Center(
                                            child: Text(
                                          'View',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        )),
                                      ),
                                    ),
                                    const DataCell(Text(
                                      'Mon. Nov. 30\n2023, 1:49pm',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.cardTextColor),
                                    )),
                                  ]),
                                ],
                              ),
                            ])))
              ],
            ),
          ),
        ));
  }
}
