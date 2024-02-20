import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/services.dart';

class EmployeeScan extends StatefulWidget {
  @override
  _EmployeeScanState createState() => _EmployeeScanState();
}

class _EmployeeScanState extends State<EmployeeScan> {
  String _barcodeResult = 'Scan a barcode';

  Future<void> _scanBarcode() async {
    try {
      ScanResult scanResult = await BarcodeScanner.scan();
      setState(() {
        _barcodeResult = scanResult.rawContent;
      });
    } on PlatformException catch (e) {
      if (e.code == 'camera_access') {
        setState(() {
          _barcodeResult = 'Camera permission denied';
        });
      } else {
        setState(() {
          _barcodeResult = 'Unknown error: $e';
        });
      }
    } on FormatException {
      setState(() {
        _barcodeResult = 'User returned without scanning';
      });
    } catch (e) {
      setState(() {
        _barcodeResult = 'Unknown error: $e';
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Barcode Result:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              _barcodeResult,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _scanBarcode,
              child: Text('Scan Barcode'),
            ),
          ],
        ),
      ),
    );
  }
}
