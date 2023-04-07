import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final String currencyType, balanceNum, shortCurrency;
  final bool isInverted;
  final IconData icon;
  final double order;

  final _blackColor = const Color(0xFF1F2123);

  const WalletCard({
    super.key,
    required this.currencyType,
    required this.balanceNum,
    required this.shortCurrency,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
   var dy= order*-20;
    return Transform.translate(
      offset: Offset(0, dy) ,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    currencyType,
                    style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        balanceNum,
                        style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 5),
                      Text(
                        shortCurrency,
                        style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: Offset(-5, 12),
                  child: Icon(icon,
                      color: isInverted ? Colors.black : Colors.white, size: 88),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
