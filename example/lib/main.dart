import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutterpluginautomation/flutterpluginautomation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  String _nativeData = 'Unknown';
  final _flutterpluginautomationPlugin = Flutterpluginautomation();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    String nativeData;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await _flutterpluginautomationPlugin.getPlatformVersion() ?? 'Unknown platform version';
      nativeData =  await _flutterpluginautomationPlugin.getRandromString() ?? 'Unknown';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
      nativeData = 'unable to get data form native';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      _nativeData = nativeData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Running on: $_platformVersion\n'),
              const SizedBox(height: 10,),
              Text('Native Data: $_nativeData\n'),
            ],
          ),
        ),
      ),
    );
  }
}
