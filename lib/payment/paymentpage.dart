import 'package:cart/constants/color.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int value = 0;
  final paymentLabels = [
    'Credit Card / Debit card',
    'Paypal',
    'Gpay',
    'PhonePe',
    'Cash on delivery',
  ];
  final paymentIcons = [
    const Icon(Icons.credit_card),
    const Icon(Icons.paypal),
    const Icon(Icons.payment),
    const Icon(Icons.account_balance_wallet),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MainColor.backgroundColor,
        title: Center(
          child: Text(
            "Payment",
            style: TextStyle(
                color: MainColor.whiteColor, fontWeight: FontWeight.w500),
          ),
        ),
        leading: BackButton(
          color: MainColor.whiteColor,
          onPressed: () {
            Navigator.pushNamed(
              context,
              'Now',
            );
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 10),
            child: Text(
              'Choose your payment method',
              style: TextStyle(
                  color: MainColor.greyColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: paymentLabels.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    value: index,
                    groupValue: value,
                    onChanged: (i) => setState(() => value = i!),
                  ),
                  title: Text(
                    paymentLabels[index],
                    style: TextStyle(
                      color: MainColor.backgroundColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.payment,
                    color: MainColor.lightblueColor,
                  ),

                  //trailing: paymentIcons[index], it will show different icons but getting an error
                );
              },
              separatorBuilder: (context, Index) {
                return const Divider();
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            height: 40,
            width: 900,
            child: MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, 'Success');
              },
              child: Text(
                "Pay",
                style: TextStyle(
                  color: MainColor.whiteColor,
                  fontSize: 20,
                ),
              ),
              color: MainColor.backgroundColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
