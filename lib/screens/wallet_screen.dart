import 'package:flutter/material.dart';

//Widgets
import '../widgets/wallet_balance_cards_widget.dart';
import '../widgets/wallet_bitcoin_widget.dart';
import '../widgets/wallet_ethereum_widget.dart';
import '../widgets/wallet_binance_widget.dart';
import '../widgets/my_appbar_widget.dart';

class WalletScreen extends StatefulWidget {
  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyAppBarWidget(),
              WalletBalanceWidget(),
              const SizedBox(height: 10),
              WalletBitcoinWidget(),
              const SizedBox(height: 10),
              WalletEthereumWidget(),
              const SizedBox(height: 10),
              WalletBinanceWidget(),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
