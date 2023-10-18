// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:sha_pages/pages/started/started_first_page.dart%20';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MaterialApp(
    home: StartedFirstPage(),
    debugShowCheckedModeBanner: false,
  ));
}
