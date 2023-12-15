import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class ActiveInvestment extends StatefulWidget {
  const ActiveInvestment({super.key});

  @override
  State<ActiveInvestment> createState() => _ActiveInvestmentState();
}

class _ActiveInvestmentState extends State<ActiveInvestment> {
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
                                      label: Text('Client name',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Investment\nplan',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Amount\ninvested',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Duration',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('ROI',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Start Date',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Expiration Date',
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
                                    const DataCell(Text('John corn')),
                                    const DataCell(Text('Premium')),
                                    const DataCell(Text('\$500')),
                                    const DataCell(Text('3 months')),
                                    const DataCell(Text('\$0')),
                                    const DataCell(Text(
                                      'Mon. Nov. 30\n2023, 1:49pm',
                                    )),
                                    const DataCell(Text(
                                      'Tue. Feb. 10\n2023, 2:49pm',
                                    )
                                    ),

                                   
                                    DataCell(
                                      Container(
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: AppColors.mainColor),
                                        child: const Center(
                                            child: Text(
                                          'Actions',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        )),
                                      ),
                                    ),
                                  ]),
                                  DataRow(cells: [
                                    const DataCell(Text('Jeff beans')),
                                    const DataCell(Text('Standard')),
                                    const DataCell(Text('\$300')),
                                    const DataCell(Text('3 months')),
                                    const DataCell(Text('\$0')),
                                    const DataCell(Text(
                                      'Mon. Nov. 30\n2023, 1:49pm',
                                    )),
                                    const DataCell(Text(
                                      'Tue. Feb. 10\n2023, 2:49pm',
                                    )),
                                    DataCell(
                                      Container(
                                        height: 20,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: AppColors.mainColor),
                                        child: const Center(
                                            child: Text(
                                          'Actions',
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
