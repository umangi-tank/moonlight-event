import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'RoleSelection.dart';

import 'admin/admin_home.dart';
import 'admin/Booked_events.dart';
import 'admin/ManageEvent.dart';
import 'admin/calender.dart';
import 'admin/create_event.dart';
import 'admin/dashboard_screen.dart';
import 'admin/edit_eventScreen.dart';
import 'admin/feedbackscreen.dart';
import 'admin/login_screen.dart';
import 'admin/notification_screen.dart';
import 'admin/profile_screen.dart';
import 'admin/total_events.dart';

import 'user/user_home.dart';
import 'user/EventBookingPage.dart';
import 'user/ForgetPassScreen.dart';
import 'user/PaymentScreen.dart';
import 'user/RegistrationScreen.dart';
import 'user/booking_screen.dart';
import 'user/calendar_screen.dart';
import 'user/categories_screen.dart';
import 'user/dashboard_screen.dart';
import 'user/login_screen.dart';
import 'user/notification_screen.dart';
import 'user/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RoleSelectScreen(),
    );
  }
}



