import 'package:crypto_bomb/components/admin_plans.dart';

import 'package:flutter/material.dart';

class InvestmentPackages extends StatefulWidget {
  const InvestmentPackages({super.key});

  @override
  State<InvestmentPackages> createState() => _InvestmentPackagesState();
}

class _InvestmentPackagesState extends State<InvestmentPackages> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AdminPlans(
              price: '\$5000', headerText: 'Basic', planThemeColor: Colors.indigo),
          AdminPlans(
              price: '\$10,000',
              headerText: 'Standard',
              planThemeColor: Colors.indigo),
          AdminPlans(
              price: '\$5000',
              headerText: 'Basic',
              planThemeColor: Colors.indigo),
        ],
      ),
    );
  }
}
