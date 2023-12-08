import 'package:crypto_bomb/components/deposit_card.dart';
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class ManageDeposits extends StatefulWidget {
  const ManageDeposits({super.key});

  @override
  State<ManageDeposits> createState() => _ManageDepositsState();
}

class _ManageDepositsState extends State<ManageDeposits> {
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
              const SizedBox(height: 15,),
              const Text('Manage Clients Deposits',
              style: TextStyle(
                   color: AppColors.headerTextColor,
                     fontSize: 20,
                      fontWeight: FontWeight.bold),),
           
                      const SizedBox(height: 20,),
           
           
              Container(
                 height: MediaQuery.of(context).size.height * 0.83,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),

                  child: const Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                       DepositCard(userId: '1', name: 'Joshua morks', mail: 'morka@gmail.com', amount: '\$500', currency: 'Bitcoin', status: 'Processed', statusColor: Colors.green),

                       SizedBox(height: 15,),

                       DepositCard(userId: '1', name: 'Lora Pelez', mail: 'pelez@gmail.com', amount: '\$700', currency: 'Bitcoin', status: 'Processing', statusColor: Colors.red),
                      ],
                    ),
                  ),
              )
            ],
           ),
         ),
       )
     );
  }
}