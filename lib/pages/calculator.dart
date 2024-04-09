import 'dart:math';
import 'package:flutter/material.dart';

class FinancialCalculatorPage extends StatefulWidget {
  const FinancialCalculatorPage({Key? key}) : super(key: key);

  @override
  _FinancialCalculatorPageState createState() =>
      _FinancialCalculatorPageState();
}

class _FinancialCalculatorPageState extends State<FinancialCalculatorPage> {
  TextEditingController purchasePriceController = TextEditingController();
  TextEditingController depositController = TextEditingController();
  TextEditingController yearsController = TextEditingController();
  TextEditingController interestRateController = TextEditingController();

  double monthlyRepayment = 0;
  double totalRepayment = 0;
  double interestPaid = 0;

  void calculate() {
    double purchasePrice = double.tryParse(purchasePriceController.text) ?? 0;
    double deposit = double.tryParse(depositController.text) ?? 0;
    int years = int.tryParse(yearsController.text) ?? 0;
    double interestRate = double.tryParse(interestRateController.text) ?? 0;

    double loanAmount = purchasePrice - deposit;
    double monthlyInterestRate = interestRate / 12 / 100;
    int totalMonths = years * 12;

    if (loanAmount <= 0 || totalMonths <= 0 || monthlyInterestRate <= 0) {
      setState(() {
        monthlyRepayment = 0;
        totalRepayment = 0;
        interestPaid = 0;
      });
      return;
    }

    double monthlyPayment = (loanAmount * monthlyInterestRate) /
        (1 - (1 / pow(1 + monthlyInterestRate, totalMonths)));
    double totalPayment = monthlyPayment * totalMonths;
    double totalInterest = totalPayment - loanAmount;

    setState(() {
      monthlyRepayment = double.parse(monthlyPayment.toStringAsFixed(2));
      totalRepayment = double.parse(totalPayment.toStringAsFixed(2));
      interestPaid = double.parse(totalInterest.toStringAsFixed(2));
    });
  }

  void reset() {
    purchasePriceController.clear();
    depositController.clear();
    yearsController.clear();
    interestRateController.clear();

    setState(() {
      monthlyRepayment = 0;
      totalRepayment = 0;
      interestPaid = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financial Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Purchase Price:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextField(
              controller: purchasePriceController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            const Text(
              'Deposit:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextField(
              controller: depositController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            const Text(
              'Years:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextField(
              controller: yearsController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            const Text(
              'Interest Rate:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextField(
              controller: interestRateController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: calculate,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 18),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                  child: const Text('Calculate'),
                ),
                ElevatedButton(
                  onPressed: reset,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 18),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                  child: const Text('Reset'),
                ),
              ],
            ),
            const Divider(
              height: 5,
              color: Colors.black,
              thickness: 5,
              indent: 0,
              endIndent: 0,
            ),
            const SizedBox(height: 32),
            Text(
              'Monthly Repayment: \nR$monthlyRepayment',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              'Total Repayment: \nR$totalRepayment',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              'Interest Paid: \nR$interestPaid',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
