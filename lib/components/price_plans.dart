import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class PricePlans extends StatelessWidget {
  final String price;
  final String headerText;
  final Color planThemeColor;
  final String tOne;
  final String tTwo;
  final String tThree;
  const PricePlans({super.key, required this.planThemeColor, required this.headerText, required this.price, required this.tOne, required this.tTwo, required this.tThree});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.86,
      width: MediaQuery.of(context).size.width * 0.22,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(100), bottomRight: Radius.circular(100)),
          boxShadow: [
            BoxShadow(
              color: AppColors.cardTextColor.withOpacity(0.2),
              blurRadius: 7,
              spreadRadius: 3,
            )
          ]),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            headerText,
            style: TextStyle(
                fontSize: 40,
                color: planThemeColor,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: planThemeColor,
                  borderRadius: const BorderRadius.only(topLeft:Radius.circular(5), bottomLeft: Radius.circular(5))
                ),
                child: Center(
                  child: Text(
                    price,
                    style: TextStyle(
                        fontSize: 20, color: Colors.white.withOpacity(0.8)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_rounded,
                        size: 25,
                        color: Colors.green.shade900,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Center(
                        child: Text(
                          tOne,
                          style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.headerTextColor,
                              fontWeight: FontWeight.w900),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 4,
                  width: MediaQuery.of(context).size.width * 0.2,
                  color: AppColors.cardTextColor.withOpacity(0.2),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_rounded,
                        size: 25,
                        color: Colors.green.shade900,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Center(
                        child: Text(
                          tTwo,
                          style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.headerTextColor,
                              fontWeight: FontWeight.w900),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 4,
                  width: MediaQuery.of(context).size.width * 0.2,
                  color: AppColors.cardTextColor.withOpacity(0.2),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_rounded,
                        size: 25,
                        color: Colors.green.shade900,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Center(
                        child: Text(
                          tThree,
                          style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.headerTextColor,
                              fontWeight: FontWeight.w900),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 4,
                  width: MediaQuery.of(context).size.width * 0.2,
                  color: AppColors.cardTextColor.withOpacity(0.2),
                ),
              ],
            ),
          ),
        
        
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                  color: planThemeColor,
                  borderRadius: const BorderRadius.only(topRight:Radius.circular(5), bottomRight: Radius.circular(5))
                ),
                child: Center(
                  child: Text(
                    'SELECT',
                    style: TextStyle(
                        fontSize: 15, color: Colors.white.withOpacity(0.9)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
