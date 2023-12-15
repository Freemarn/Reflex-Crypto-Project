import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class ManageWithdrawal extends StatefulWidget {
  const ManageWithdrawal({super.key});

  @override
  State<ManageWithdrawal> createState() => _ManageWithdrawalState();
}

class _ManageWithdrawalState extends State<ManageWithdrawal> {
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
                  'Manage Clients Withdrawal',
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
                              Container(
                                width: MediaQuery.of(context).size.width * 0.12,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
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
                              DataTable(
                                columns: const [
                                  DataColumn(
                                      label: Text('ID',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Client name',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Receivers email',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Amount',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Payment\nmethod',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Status',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Date created',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Option',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    const DataCell(Text('1')),
                                    const DataCell(Text('John corn')),
                                    const DataCell(Text('john@gmail.com')),
                                    const DataCell(Text('\$500')),
                                    const DataCell(Text('Bitcoin')),
                                    DataCell(
                                      Container(
                                        height: 25,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.red,
                                        ),
                                        child: const Center(
                                            child: Text(
                                          'Pending',
                                          style: TextStyle(
                                              fontSize: 12,
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
                                  ]),
                                  DataRow(cells: [
                                    const DataCell(Text('2')),
                                    const DataCell(Text('Josh bread')),
                                    const DataCell(Text('josh@gmail.com')),
                                    const DataCell(Text('\$700')),
                                    const DataCell(Text('Bitcoin')),
                                    DataCell(
                                      Container(
                                        height: 25,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.red,
                                        ),
                                        child: const Center(
                                            child: Text(
                                          'Pending',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        )),
                                      ),
                                    ),
                                    const DataCell(Text(
                                      'Mon. Dec. 30\n2023, 12:49am',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.cardTextColor),
                                    )),
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
