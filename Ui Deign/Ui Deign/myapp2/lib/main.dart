import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'URL Launcher'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _hasCallSupport = true;
  bool _hasSmsSupport = true;
  Future<void>? _launched;
  String _phone = '9512714369';
  String _smsMessage = 'Hello from Flutter!';

  @override
  void initState() {
    super.initState();
    // Check for phone call support.
    canLaunch('tel:$_phone').then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });

    // Check for SMS support.
    canLaunch('sms:$_phone').then((bool result) {
      setState(() {
        _hasSmsSupport = result;
      });
    });
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launch(launchUri.toString());
  }

  Future<void> _sendSms(String phoneNumber, String message) async {
    final Uri launchUri = Uri(scheme: 'sms', path: phoneNumber, queryParameters: {'body': message});
    await launch(launchUri.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  onChanged: (String text) => _phone = text,
                  decoration: const InputDecoration(
                    hintText: 'Input the phone number',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _hasCallSupport
                    ? () => setState(() {
                          _launched = _makePhoneCall(_phone);
                        })
                    : null,
                child: _hasCallSupport
                    ? const Text('Make phone call')
                    : const Text('Calling not supported'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _hasSmsSupport
                    ? () => setState(() {
                          _launched = _sendSms(_phone, _smsMessage);
                        })
                    : null,
                child: _hasSmsSupport
                    ? const Text('Send SMS')
                    : const Text('SMS not supported'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
