import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);
  Future<void> initPayment({
    required String email,
    required double amount,
    required BuildContext context,
  }) async {
    try {
      // create a payment intent on the server
      final response = await http.post(
          Uri.parse(
              "https://us-central1-flutterstripe1.cloudfunctions.net/stripePaymentIntentRequest"),
          body: {
            "email": email,
            "amount": amount.toString(),
          });

      final jsonResponse = jsonDecode(response.body);
      //initialize the payment sheet
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: jsonResponse['paymentIntent'],
        merchantDisplayName: 'Event App',
        customerId: jsonResponse['customer'],
        customerEphemeralKeySecret: jsonResponse['ephemeralKey'],
      ));

      await Stripe.instance.presentPaymentSheet();
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Payment successful")));
    } catch (errorr) {
      if (errorr is StripeException) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Payment Unsuccessful $errorr"),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                await initPayment(
                    email: 'kavi.gamil.com', amount: 50.0, context: context);
              },
              child: Text("Pay 20"))),
    );
  }
}
