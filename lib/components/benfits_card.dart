import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class BenefitCard extends StatelessWidget {
  final String benefitText;
  final String benefitHeaderText;
  final IconData cardIcon;
  

  const BenefitCard({super.key, required this.benefitText, required this.benefitHeaderText, required this.cardIcon});

  @override
  Widget build(BuildContext context) {
    return  Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.028,
                                      decoration: BoxDecoration(
                                          color: AppColors.mainColor
                                              .withOpacity(0.7),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Icon(
                                        cardIcon,
                                        size: 17,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          benefitHeaderText,
                                          
                                          style: const TextStyle(
                                              height: 1,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 13,
                                              color: AppColors.headerTextColor),
                                        ),
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01),
                                        Text(
                                          benefitText,
                                          
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 10,
                                              color:
                                                  Colors.grey.withOpacity(0.7)),
                                        ),
                                      ],
                                    )
                                  ],)
                              ;
  }
}