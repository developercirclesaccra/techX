//import 'package:flutter/material.dart';
//import 'dart:async';
//
//import 'package:flutter/services.dart';
//import 'package:pdftron_flutter/pdftron_flutter.dart';
//
//void main() => runApp(Upload());
//
//class Upload extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<Upload> {
//  String _version = 'Unknown';
//
//  @override
//  void initState() {
//    super.initState();
//    initPlatformState();
//
//    PdftronFlutter.openDocument(
//        "https://pdftron.s3.amazonaws.com/downloads/pdfref.pdf");
//  }
//
//  // Platform messages are asynchronous, so we initialize via an async method.
//  Future<void> initPlatformState() async {
//    String version;
//    // Platform messages may fail, so we use a try/catch PlatformException.
//    try {
//      //PdftronFlutter.initialize();
//      version = await PdftronFlutter.version;
//    } on PlatformException {
//      version = 'Failed to get platform version.';
//    }
//
//    // If the widget was removed from the tree while the asynchronous platform
//    // message was in flight, we want to discard the reply rather than calling
//    // setState to update our non-existent appearance.
//    if (!mounted) return;
//
//    setState(() {
//      _version = version;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: const Text('PDFTron flutter app'),
//        ),
//        body: Center(
//          child: Text('Running on: $_version\n'),
//        ),
//      ),
//    );
//  }
//}

//import 'package:app/main.dart';
//import 'package:flutter/material.dart';
//
//class Upload extends StatefulWidget {
//  @override
//  _UploadState createState() => _UploadState();
//}

//class _UploadState extends State<Upload> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(
//          'Upload Files',
//        ),
//      ),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          Center(
//            child: RaisedButton(
//              onPressed: () {},
//              child: Text('Upload'),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}

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
      "https://pdftron.s3.amazonaws.com/downloads/pl/PDFTRON_mobile_about.pdf";

  @override
  void initState() {
    super.initState();
    initPlatformState();

    if (Platform.isIOS) {
      // Open the document for iOS, no need for permission
      showViewer();
    } else {
      // Request for permissions for android before opening document
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
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      PdftronFlutter.initialize(
          "Insert commercial license key here after purchase");
      version = await PdftronFlutter.version;
    } on PlatformException {
      version = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _version = version;
    });
  }

  void showViewer() {
    // Shows how to disable functionality. Uncomment to configure your viewer with a Config object.
    //  var disabledElements = [Buttons.shareButton, Buttons.searchButton];
    //  var disabledTools = [Tools.annotationCreateLine, Tools.annotationCreateRectangle];
    //  var config = Config();
    //  config.disabledElements = disabledElements;
    //  config.disabledTools = disabledTools;
    //  PdftronFlutter.openDocument(_document, config: config);

    // Open document without a config file which will have all functionality enabled.
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
          title: const Text('PDFTron flutter app'),
        ),
        body: Center(
          child: Text('Running on: $_version\n'),
        ),
      ),
    );
  }
}
