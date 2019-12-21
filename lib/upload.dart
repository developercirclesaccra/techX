import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdftron_flutter/pdftron_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class Upload extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Upload> {
  String _version = 'Unknown';
  String _document =
      "https://media.readthedocs.org/pdf/flask/latest/flask.pdf";

  @override
  void initState() {
    super.initState();
    initPlatformState();

    if (Platform.isIOS) {
      showViewer();
    } else {
      launchWithPermission();
    }
  }

  Future<void> launchWithPermission() async {
    Map<PermissionGroup, PermissionStatus> permissions =
        await PermissionHandler().requestPermissions([PermissionGroup.storage]);
    if (granted(permissions[PermissionGroup.storage])) {
      showViewer();
    }
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String version;
    try {
      PdftronFlutter.initialize(
          "");
      version = await PdftronFlutter.version;
    } on PlatformException {
      version = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _version = version;
    });
  }

  void showViewer() {
    PdftronFlutter.openDocument(_document);
  }

  bool granted(PermissionStatus status) {
    return status == PermissionStatus.granted;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Upload File'),
        ),
        body: Center(
          child: Text('Upload your File here', style: TextStyle( color: Color(0xAA445544), fontSize: 24.0)),
        ),
      ),
    );
  }
}
