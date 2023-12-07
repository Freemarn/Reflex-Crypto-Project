import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class DepositCard extends StatelessWidget {
  final String userId;
  final String name;
  final String mail;
  final String amount;
  final String currency;
  final String status;
  final Color statusColor;
  const DepositCard({super.key, required this.userId, required this.name, required this.mail, required this.amount, required this.currency, required this.status, required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(userId, style: const TextStyle(fontSize: 14, color: AppColors.cardTextColor),),
                              Text(name, style: const TextStyle(fontSize: 14, color: AppColors.cardTextColor),),
                              Text(mail, style: const TextStyle(fontSize: 14, color: AppColors.cardTextColor),),
                              Text(amount, style: const TextStyle(fontSize: 14, color: AppColors.cardTextColor),),
                              Text(currency, style: const TextStyle(fontSize: 14, color: AppColors.cardTextColor),),
                              Container(
                                height: 25,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: statusColor,
                                ),
                                child: Center (child: Text(status, style: const TextStyle(fontSize: 12, color: Colors.white),)), 
                              ),
                    
                              const Text('Mon. Nov. 30\n2023, 1:49pm', style: TextStyle(fontSize: 12, color: AppColors.cardTextColor),),
                    
                              Container(
                                height: 25,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blueAccent
                                ),
                                child: const Center (child: Text('View', style: TextStyle(fontSize: 12, color: Colors.white),)), 
                              ),
                    
                              Container(
                                height: 25,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.red
                                ),
                                child: const Center (child: Text('Delete', style: TextStyle(fontSize: 12, color: Colors.white),)), 
                              ),
                            ],
                          ),
                        );
  }
}