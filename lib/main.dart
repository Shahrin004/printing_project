
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
  Future<void> testReceipt(NetworkPrinter printer) async {
    printer.row([
      PosColumn(text: 'Cherry POS', width: 12, styles: const PosStyles(align: PosAlign.center, bold: true, height: PosTextSize.size3, width: PosTextSize.size3)),
      //PosColumn(text: 'Cherry POS', width: 12, styles: const PosStyles(align: PosAlign.center, bold: true, height: PosTextSize.size9, width: PosTextSize.size9)),
    ]);
      printer.row(
          [
            PosColumn(text: 'Products', width: 7, styles: const PosStyles(align: PosAlign.center, bold: true)),
            PosColumn(text: 'Qty', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
            PosColumn(text: 'Amount', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
          ]
      );
      // printer.hr();


      printer.hr(ch: '-');
      if( s.length<=25){


        printer.row([
          PosColumn(text:s, width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
          PosColumn(text: '52.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
          PosColumn(text: '2500.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),

        ]);
      }
      else{

        printer.row([
          PosColumn(text:s, width: 12, styles: const PosStyles(align: PosAlign.left, bold: true)),
        ]);
        printer.row([
          PosColumn(text:" ", width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
          PosColumn(text: '52.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
          PosColumn(text: '2500.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),

        ]);
      }
      printer.hr(ch: '-');
      if( y.length<=25){
        printer.row([
          PosColumn(text:y, width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
          PosColumn(text: '6.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
          PosColumn(text: '6550.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),

        ]);
      }else{

        printer.row([
          PosColumn(text:y, width: 12, styles: const PosStyles(align: PosAlign.left, bold: true)),
        ]);
        printer.row([
          PosColumn(text:" ", width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
          PosColumn(text: '6.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
          PosColumn(text: '6550.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),

        ]);
      }
      printer.hr(ch: '-');
      printer.feed(1);
      printer.cut();


  }

  Future<void> printDemoReceipt(NetworkPrinter printer) async {
    /*Print image;
    final ByteData data = await rootBundle.load('assets/rabbit_black.jpg');
    final Uint8List bytes = data.buffer.asUint8List();
     image = decodeImage(bytes);
    printer.image(image);*/


    printer.row([
      PosColumn(text: 'Cherry POS', width: 12, styles: const PosStyles(align: PosAlign.center, bold: true, height: PosTextSize.size2, width: PosTextSize.size3)),
    ]);

    printer.row([
      PosColumn(text: '', width: 12, styles: const PosStyles(align: PosAlign.center)),
    ]);

    printer.row([
      PosColumn(text: 'Sector- 7, Uttara, Dhaka', width: 12, styles: const PosStyles(align: PosAlign.center)),
    ]);
    printer.row([
      PosColumn(text: 'Phone: 01700000000', width: 12, styles: const PosStyles(align: PosAlign.center)),
    ]);
    printer.row([
      PosColumn(text: '', width: 12, styles: const PosStyles(align: PosAlign.center)),
    ]);

    printer.row([
      PosColumn(text: 'BIN NO: 566445468486', width: 12, styles: const PosStyles(align: PosAlign.center, bold: true)),
    ]);

    printer.row([
      PosColumn(text: 'Served By: Monjurur', width: 12, styles: const PosStyles(align: PosAlign.center, bold: true)),
    ]);
    printer.row([
      PosColumn(text: '', width: 12, styles: const PosStyles(align: PosAlign.center)),
    ]);
    printer.row([
      PosColumn(text: 'Date: ', width: 2, styles: const PosStyles(align: PosAlign.left, bold: true)),
      PosColumn(text: '05/11/2022', width: 3, styles: const PosStyles(align: PosAlign.left)),
      PosColumn(text: '', width: 3, styles: const PosStyles(align: PosAlign.center, bold: true)),
      PosColumn(text: 'Time: ', width: 2, styles: const PosStyles(align: PosAlign.left, bold: true)),
      PosColumn(text: '12:50', width: 2, styles: const PosStyles(align: PosAlign.left)),

    ]);
   /* printer.row([
      PosColumn(text: '', width: 12, styles: const PosStyles(align: PosAlign.center)),
    ]);*/
    printer.row([
      PosColumn(text: 'Invoice No: POS#2324654654', width: 12, styles: const PosStyles(align: PosAlign.left, bold: true)),
    ]);

    // printer.row([
    //   PosColumn(text: '', width: 12, styles: const PosStyles(align: PosAlign.center)),
    // ]);

    printer.hr(ch: '=');

    printer.row(
      [
        PosColumn(text: 'Products', width: 7, styles: const PosStyles(align: PosAlign.center, bold: true)),
        PosColumn(text: 'Qty', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
        PosColumn(text: 'Amount', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
      ]
    );
    printer.hr();

    printer.row([
      PosColumn(text:'Katla Fish Big Size- 2000 g', width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
      PosColumn(text: '1.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
      PosColumn(text: '300.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
    ]);
    printer.hr(ch: '-');
    //printer.hr(ch: '-');
    printer.row([
      PosColumn(text: 'Fried Chicken', width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
      PosColumn(text: '5.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
      PosColumn(text: '457.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
    ]);
    printer.hr(ch: '-');
    //printer.hr(ch: '-');
    if( s.length<=25){
      printer.row([
        PosColumn(text:s, width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
        PosColumn(text: '52.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
        PosColumn(text: '2500.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),

      ]);
    }else{

      printer.row([
        PosColumn(text:s, width: 12, styles: const PosStyles(align: PosAlign.left, bold: true)),
      ]);
      printer.row([
        PosColumn(text:" ", width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
        PosColumn(text: '52.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
        PosColumn(text: '2500.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),

      ]);
    }
    printer.hr(ch: '-');
    //printer.hr(ch: '-');
    printer.row([
      PosColumn(text: 'MasalaBazzar- Shingara', width: 7, styles: const PosStyles(align: PosAlign.left, bold: true)),
      PosColumn(text: '98.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
      PosColumn(text: '650.00', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
    ]);
    printer.hr(ch: '-');
    printer.row([
      PosColumn(text: 'Total Quantity', width: 7, styles: const PosStyles(align: PosAlign.center, bold: true)),
      PosColumn(text: '23.00', width: 2, styles: const PosStyles(align: PosAlign.right, bold: true)),
      PosColumn(text: '', width: 3, styles: const PosStyles(align: PosAlign.right, bold: true)),
    ]);
    printer.hr(ch: '-');

    printer.row([
      PosColumn(text: 'Total:', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
      PosColumn(text: '657.80', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
    ]);

    //printer.hr(ch: '-');

    printer.row([
      PosColumn(text: 'Total VAT%:', width: 6, styles: const PosStyles(align: PosAlign.right)),
      PosColumn(text: '657.80', width: 6, styles: const PosStyles(align: PosAlign.right)),
    ]);

    //printer.hr(ch: '-');

    printer.row([
      PosColumn(text: 'Total Discount:', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
      PosColumn(text: '50.04', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
    ]);

    //printer.hr(ch: '-');

    printer.row([
      PosColumn(text: 'Net Amount:', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
      PosColumn(text: '9,481.00', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
    ]);

   // printer.hr(ch: '-');
    printer.row([
      PosColumn(text: 'Pay Type:', width: 6, styles: const PosStyles(align: PosAlign.right)),
      PosColumn(text: 'Card', width: 6, styles: const PosStyles(align: PosAlign.right)),
    ]);

    //printer.hr(ch: '-');

/*    printer.row([
      PosColumn(text: 'In Words: ', width: 2, styles: const PosStyles(align: PosAlign.left, bold: true)),
      PosColumn(text: 'Nine Thousand Four Hundred Eight One and Seventy One Paisa Only', width: 10, styles: const PosStyles(align: PosAlign.left)),
    ]);*/
    printer.hr(ch: '-');
    printer.row([
      PosColumn(text: 'Paid Amount:', width: 6, styles: const PosStyles(align: PosAlign.right)),
      PosColumn(text: '9,824.00', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
    ]);
    //printer.hr(ch: '-');
    printer.row([
      PosColumn(text: 'Change Amount:', width: 6, styles: const PosStyles(align: PosAlign.right)),
      PosColumn(text: '0.00', width: 6, styles: const PosStyles(align: PosAlign.right, bold: true)),
    ]);
    //printer.hr(ch: '=', linesAfter: 2);

    printer.row([
      PosColumn(text: '', width: 12, styles: const PosStyles(align: PosAlign.center)),
    ]);

    printer.row([
      PosColumn(text: 'Get Free Home Delivery (masalaBazaar.com.bd)', width: 12, styles: const PosStyles(align: PosAlign.left, bold: true)),
    ]);

    printer.row([
      PosColumn(text: 'Tel: 89088899, Mobile: 01777777777', width: 12, styles: const PosStyles(align: PosAlign.left, bold: true)),
    ]);

    printer.row([
      PosColumn(text: 'Note: ', width: 2, styles: const PosStyles(align: PosAlign.left, bold: true)),
      PosColumn(text: 'Purchases of Defected Item must be Exchanged by 72 Hour with Invoice', width: 10, styles: const PosStyles(align: PosAlign.left)),
    ]);
    printer.row([
      PosColumn(text: '(Condition Applicable)', width: 12, styles: const PosStyles(align: PosAlign.right,)),
    ]);

    /*printer.row([
      PosColumn(text: 'Qty', width: 1),
      PosColumn(text: 'Item', width: 7),
      PosColumn(
          text: 'Price', width: 2, styles: const PosStyles(align: PosAlign.right)),
      PosColumn(
          text: 'Total', width: 2, styles: const PosStyles(align: PosAlign.right)),
    ]);

    printer.row([
      PosColumn(text: '2', width: 1),
      PosColumn(text: 'ONION RINGS', width: 7),
      PosColumn(
          text: '0.99', width: 2, styles: const PosStyles(align: PosAlign.right)),
      PosColumn(
          text: '1.98', width: 2, styles: const PosStyles(align: PosAlign.right)),
    ]);

    printer.row([
      PosColumn(text: '1', width: 1),
      PosColumn(text: 'PIZZA', width: 7),
      PosColumn(
          text: '3.45', width: 2, styles: const PosStyles(align: PosAlign.right)),
      PosColumn(
          text: '3.45', width: 2, styles: const PosStyles(align: PosAlign.right)),
    ]);
    printer.row([
      PosColumn(text: '1', width: 1),
      PosColumn(text: 'SPRING ROLLS', width: 7),
      PosColumn(
          text: '2.99', width: 2, styles: const PosStyles(align: PosAlign.right)),
      PosColumn(
          text: '2.99', width: 2, styles: const PosStyles(align: PosAlign.right)),
    ]);
    printer.row([
      PosColumn(text: '3', width: 1),
      PosColumn(text: 'CRUNCHY STICKS', width: 7),
      PosColumn(
          text: '0.85', width: 2, styles: const PosStyles(align: PosAlign.right)),
      PosColumn(
          text: '2.55', width: 2, styles: const PosStyles(align: PosAlign.right)),
    ]);
    printer.hr();

    printer.row([
      PosColumn(
          text: 'TOTAL',
          width: 6,
          styles: const PosStyles(
            height: PosTextSize.size2,
            width: PosTextSize.size2,
          )),
      PosColumn(
          text: '\$10.97',
          width: 6,
          styles: const PosStyles(
            align: PosAlign.right,
            height: PosTextSize.size2,
            width: PosTextSize.size2,
          )),
    ]);

    printer.hr(ch: '=', linesAfter: 1);

    printer.row([
      PosColumn(
          text: 'Cash',
          width: 8,
          styles: const PosStyles(align: PosAlign.right, width: PosTextSize.size2)),
      PosColumn(
          text: '\$15.00',
          width: 4,
          styles: const PosStyles(align: PosAlign.right, width: PosTextSize.size2)),
    ]);
    printer.row([
      PosColumn(
          text: 'Change',
          width: 8,
          styles: const PosStyles(align: PosAlign.right, width: PosTextSize.size2)),
      PosColumn(
          text: '\$4.03',
          width: 4,
          styles: const PosStyles(align: PosAlign.right, width: PosTextSize.size2)),
    ]);

    printer.feed(2);
    printer.text('Thank you!',
        styles: const PosStyles(align: PosAlign.center, bold: true));

    final now = DateTime.now();
    final formatter = DateFormat('MM/dd/yyyy H:m');
    final String timestamp = formatter.format(now);
    printer.text(timestamp,
        styles: const PosStyles(align: PosAlign.center), linesAfter: 2);*/

    // Print QR Code from image
    // try {
    //   const String qrData = 'example.com';
    //   const double qrSize = 200;
    //   final uiImg = await QrPainter(
    //     data: qrData,
    //     version: QrVersions.auto,
    //     gapless: false,
    //   ).toImageData(qrSize);
    //   final dir = await getTemporaryDirectory();
    //   final pathName = '${dir.path}/qr_tmp.png';
    //   final qrFile = File(pathName);
    //   final imgFile = await qrFile.writeAsBytes(uiImg.buffer.asUint8List());
    //   final img = decodeImage(imgFile.readAsBytesSync());

    //   printer.image(img);
    // } catch (e) {
    //   print(e);
    // }

    // Print QR Code using native function
    // printer.qrcode('example.com');

    // printer.feed(2);
    printer.feed(1);
    printer.cut();
  }

  printNow() async {
    const PaperSize paper = PaperSize.mm80;
    final profile = await CapabilityProfile.load();
    final printer = NetworkPrinter(paper, profile);

    try {
      final PosPrintResult res =
          await printer.connect('10.0.7.171', port: 9100);

      if (res == PosPrintResult.success) {
        testReceipt(printer);
        //printDemoReceipt(printer);
        printer.disconnect();
      }
      print(res.msg);
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
