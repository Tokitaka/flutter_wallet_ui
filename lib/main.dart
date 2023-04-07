import 'package:flutter/material.dart';
import 'package:toonflix_vr1/widgets/walletCard.dart';

import 'widgets/myButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Icon(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Hey, Selena",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "Welcome back",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 7),
                Text(
                  "\$5,050",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                        bgColor: Colors.amber,
                        textColor: Colors.black,
                        text: "Transfer"),
                    MyButton(
                        bgColor: const Color(0xFF1F2123),
                        textColor: Colors.white,
                        text: "Request"),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wallets",
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                WalletCard(
                  currencyType: "Euro",
                  balanceNum: "6 428",
                  shortCurrency: "EUR",
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  order: 0,
                ),
                WalletCard(
                  currencyType: "Bitcoin",
                  balanceNum: "55 622",
                  shortCurrency: "BTC",
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  order: 1,
                ),
                WalletCard(
                  currencyType: "Rupee",
                  balanceNum: "28 981",
                  shortCurrency: "INR",
                  icon: Icons.currency_rupee_rounded,
                  isInverted: false,
                  order: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
