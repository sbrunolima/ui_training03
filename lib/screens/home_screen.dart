import 'package:flutter/material.dart';

//Widgets
import '../widgets/home_balance_widget.dart';
import '../widgets/month_spent_earned_widget.dart';
import '../widgets/graph_widget.dart';
import '../widgets/my_appbar_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              const SizedBox(height: 20),
              HomeBalanceEidget(),
              const SizedBox(height: 40),
              MonthSpentEarnedWidget(),
              const SizedBox(height: 5),
              GraphWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
