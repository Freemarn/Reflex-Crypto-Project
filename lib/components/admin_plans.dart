import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class AdminPlans extends StatefulWidget {
   final String price;
  final String headerText;
  final Color planThemeColor;
  const AdminPlans({super.key, required this.price, required this.headerText, required this.planThemeColor});

  @override
  State<AdminPlans> createState() => _AdminPlansState();
}

class _AdminPlansState extends State<AdminPlans> {
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
            widget.headerText,
            style: TextStyle(
                fontSize: 40,
                color: widget.planThemeColor,
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
                  color: widget.planThemeColor,
                  borderRadius: const BorderRadius.only(topLeft:Radius.circular(5), bottomLeft: Radius.circular(5))
                ),
                child: Center(
                  child: Text(
                    widget.price,
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
                      const Center(
                        child: Text(
                          'Sample Text Here',
                          style: TextStyle(
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
                      const Center(
                        child: Text(
                          'Sample Text Here',
                          style: TextStyle(
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
                      const Center(
                        child: Text(
                          'Sample Text Here',
                          style: TextStyle(
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
                      const Center(
                        child: Text(
                          'Sample Text Here',
                          style: TextStyle(
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
                      const Center(
                        child: Text(
                          'Sample Text Here',
                          style: TextStyle(
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
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  
                  borderRadius: const BorderRadius.only(topRight:Radius.circular(5), bottomRight: Radius.circular(5)),
                  border: Border.all(
                    color: widget.planThemeColor,
                    width: 2
                  )
                ),
                child: Center(child: Icon(Icons.edit, color: widget.planThemeColor,))
              ),

              const SizedBox(
            width: 10,),


            Container(
                
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                
                  borderRadius: const BorderRadius.only(topRight:Radius.circular(5), bottomRight: Radius.circular(5)),
                  border: Border.all(
                    color: widget.planThemeColor,
                    width: 2
                  )
                ),
                child: Center(child: Icon(Icons.cancel_outlined, color: widget.planThemeColor,))
              ),
            ],
          ),
        ],
      ),
    );
  }
}