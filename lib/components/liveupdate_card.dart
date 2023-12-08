import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';

class MiniCards extends StatelessWidget {
  final String imageUrl;
  final String imageText;
  final String abbr;
  final String currentPrice;
  final String changePrice;
  final String vol;
  final Color borderColor;
  final Color changePriceColor;
  const MiniCards(
      {super.key,
      required this.imageUrl,
      required this.imageText,
      required this.abbr,
      required this.currentPrice,
      required this.changePrice,
      required this.vol,
      required this.changePriceColor,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.14,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                HexagonWidget.pointy(
                  width: 20,
                  color: Colors.black.withOpacity(0.8),
                  elevation: 0,
                  child: Image(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      imageText,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      abbr,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 11),
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                currentPrice,
                style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'CHG',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      Text(
                        changePrice,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'vol',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        vol,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
