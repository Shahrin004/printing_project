
import 'dart:developer';

import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String? title;

  const MyHomePage({Key? key, this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String y ="Katla Fish Big Size-2000 gm";
  String s ="Katla(Padma River) Fish Big Size- 2000 gm";
 PosPrintResult? res;
  NetworkPrinter? printer;
  printDemoReceipt()  {
    try{

      print('start');
      printer?.row([
        PosColumn(text: 'Cherry POS', width: 12, styles: const PosStyles(align: PosAlign.center, bold: true, height: PosTextSize.size2, width: PosTextSize.size3)),
      ]);

      printer?.row([
        PosColumn(text: '', width: 12, styles: const PosStyles(align: PosAlign.center)),
      ]);

      printer?.row([
        PosColumn(text: 'Sector- 7, Uttara, Dhaka', width: 12, styles: const PosStyles(align: PosAlign.center)),
      ]);
      printer?.row([
        PosColumn(text: 'Phone: 01700000000', width: 12, styles: const PosStyles(align: PosAlign.center)),
      ]);
      printer?.row([
        PosColumn(text: '', width: 12, styles: const PosStyles(align: PosAlign.center)),
      ]);

      printer?.row([
        PosColumn(text: 'BIN NO: 566445468486', width: 12, styles: const PosStyles(align: PosAlign.center, bold: true)),
      ]);

      printer?.row([
        PosColumn(text: 'Served By: Monjurur', width: 12, styles: const PosStyles(align: PosAlign.center, bold: true)),
      ]);
      printer?.row([
        PosColumn(text: '', width: 12, styles: const PosStyles(align: PosAlign.center)),
      ]);
      printer?.row([
        PosColumn(text: 'Date: ', width: 2, styles: const PosStyles(align: PosAlign.left, bold: true)),
        PosColumn(text: '05/11/2022', width: 3, styles: const PosStyles(align: PosAlign.left)),
        PosColumn(text: '', width: 3, styles: const PosStyles(align: PosAlign.center, bold: true)),
        PosColumn(text: 'Time: ', width: 2, styles: const PosStyles(align: PosAlign.left, bold: true)),
        PosColumn(text: '12:50', width: 2, styles: const PosStyles(align: PosAlign.left)),

      ]);

      printer?.row([
        PosColumn(text: 'Invoice No: POS#2324654654', width: 12, styles: const PosStyles(align: PosAlign.left, bold: true)),
      ]);



      printer?.hr(ch: '=');

      printer?.row(
          [
            PosColumn(text: 'Products', width: 7, styles: const PosStyles(align: PosAlign.center, bold: true)),
            PosColumn(text: 'Qty', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
            PosColumn(text: 'Amount', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
          ]
      );
      printer?.hr();

      printer?.row([
        PosColumn(text:'Katla Fish Big Size- 2000 g', width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
        PosColumn(text: '1.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
        PosColumn(text: '300.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
      ]);
      printer?.hr(ch: '-');
      printer?.row([
        PosColumn(text: 'Fried Chicken', width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
        PosColumn(text: '5.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
        PosColumn(text: '457.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
      ]);
      printer?.hr(ch: '-');

      if( s.length<=25){
        printer?.row([
          PosColumn(text:s, width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
          PosColumn(text: '52.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
          PosColumn(text: '2500.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),

        ]);
      }else{

        printer?.row([
          PosColumn(text:s, width: 12, styles: const PosStyles(align: PosAlign.left, bold: true)),
        ]);
        printer?.row([
          PosColumn(text:" ", width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
          PosColumn(text: '52.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
          PosColumn(text: '2500.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),

        ]);
      }
      printer?.hr(ch: '-');

      printer?.row([
        PosColumn(text: 'MasalaBazzar- Shingara', width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
        PosColumn(text: '98.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
        PosColumn(text: '650.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
      ]);
      printer?.hr(ch: '-');
      printer?.row([
        PosColumn(text: 'Total Quantity', width: 7, styles: const PosStyles(align: PosAlign.center, bold: true)),
        PosColumn(text: '23.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
        PosColumn(text: '', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
      ]);
      printer?.hr(ch: '-');

      printer?.row([
        PosColumn(text: 'Total:', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
        PosColumn(text: '657.80', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
      ]);


      printer?.row([
        PosColumn(text: 'Total VAT%:', width: 6, styles: const PosStyles(align: PosAlign.right)),
        PosColumn(text: '657.80', width: 6, styles: const PosStyles(align: PosAlign.right)),
      ]);



      printer?.row([
        PosColumn(text: 'Total Discount:', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
        PosColumn(text: '50.04', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
      ]);



      printer?.row([
        PosColumn(text: 'Net Amount:', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
        PosColumn(text: '9,481.00', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
      ]);


      printer?.row([
        PosColumn(text: 'Pay Type:', width: 6, styles: const PosStyles(align: PosAlign.right)),
        PosColumn(text: 'Card', width: 6, styles: const PosStyles(align: PosAlign.right)),
      ]);


      printer?.hr(ch: '-');
      printer?.row([
        PosColumn(text: 'Paid Amount:', width: 6, styles: const PosStyles(align: PosAlign.right)),
        PosColumn(text: '9,824.00', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
      ]);

      printer?.row([
        PosColumn(text: 'Change Amount:', width: 6, styles: const PosStyles(align: PosAlign.right)),
        PosColumn(text: '0.00', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
      ]);


      printer?.row([
        PosColumn(text: '', width: 12, styles: const PosStyles(align: PosAlign.center)),
      ]);

      printer?.row([
        PosColumn(text: 'Get Free Home Delivery (masalaBazaar.com.bd)', width: 12, styles: const PosStyles(align: PosAlign.left, bold: true)),
      ]);

      printer?.row([
        PosColumn(text: 'Tel: 89088899, Mobile: 01777777777', width: 12, styles: const PosStyles(align: PosAlign.left, bold: true)),
      ]);

      printer?.row([
        PosColumn(text: 'Note: ', width: 2, styles: const PosStyles(align: PosAlign.left, bold: true)),
        PosColumn(text: 'Purchases of Defected Item must be Exchanged by 72 Hour with Invoice', width: 10, styles: const PosStyles(align: PosAlign.left)),
      ]);
      printer?.row([
        PosColumn(text: '(Condition Applicable)', width: 12, styles: const PosStyles(align: PosAlign.right,)),
      ]);
      //printer?.text("Regular: aA bB cC dD eE fF gG hH iI jJ kK lL mM nN oO pP qQ rR sS tT uU vV wW xX yY zZ");
      printer?.feed(2);
      printer?.cut();
      print('cut');

    }catch(e){
      log(e.toString());
    }
  }

  printNow() async {
    const PaperSize paper = PaperSize.mm80;


    try {
      if(printer == null){
        final profile = await CapabilityProfile.load();
        printer = NetworkPrinter(paper, profile);
        res = await printer?.connect('10.0.7.171', port: 9100);
        setState(() {

        });
      }


      if (res == PosPrintResult.success) {
        // printer?.beep(n:1);
         printDemoReceipt();
         // printer?.beep(n:1);
        // printer?.disconnect();
      }
    } on Exception catch (e) {
      print('Exception: ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Demo Print')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              printNow();
            },
            child: const Text(
              'Print',
              style: TextStyle(color: Colors.black),
            )),
      ),
    );
  }
}
