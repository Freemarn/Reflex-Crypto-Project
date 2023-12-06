
import 'package:crypto_bomb/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class AnnouncementCard extends StatefulWidget {
  const AnnouncementCard({super.key});

  @override
  State<AnnouncementCard> createState() => _AnnouncementCardState();
}

class _AnnouncementCardState extends State<AnnouncementCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.015),
            const Icon(
              Icons.calendar_month_outlined,
              color: AppColors.mainColor,
              size: 20,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.015),
            const Text(
              'Notification',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.headerTextColor,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            'You just deposited 5,000\$ into your dashboard, contact your investment manager for more informatioon,\nthank you for choosing cryptoflex, lorem ipsum dolor sit amet, consectetuer adipscing elit, sed diam nonummy',
            style: TextStyle(
                fontSize: 12,
                color: AppColors.headerTextColor,
                fontWeight: FontWeight.w300),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.042,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.043,
                  ),
                  const Text(
                    'CryptoFlex',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: AppColors.mainColor),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.replay_outlined,
                    color: AppColors.sidebarTextColor.withOpacity(0.4),
                    size: 16,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Posted 2mins ago',
                    style: TextStyle(
                        fontSize: 9,
                        color: AppColors.sidebarTextColor.withOpacity(0.7)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.visibility,
                      color: AppColors.sidebarTextColor.withOpacity(0.4),
                      size: 16),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'viewed',
                    style: TextStyle(
                        fontSize: 9,
                        color: AppColors.sidebarTextColor.withOpacity(0.7)),
                  ),
                  
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.025,
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Container(
            height: 1,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
                color: AppColors.sidebarTextColor.withOpacity(0.2)),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
      ],
    );
  }
}
