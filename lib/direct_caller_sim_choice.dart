library direct_caller_sim_choice;

import 'dart:io' show Platform;
import 'package:android_intent_plus/android_intent.dart';

/// A Class to make phone calls using the default dialer app.
class DirectCaller {
  /// Makes a phone call using the default dialer app.
  bool makePhoneCall(String phoneNumber) {
    /// Check if the phone number is of 10 digits.
    // if (phoneNumber.length != 10) {
    //   throw Exception('Phone number must be of 10 digits');
    // }


    /// Check if the platform is Android.
    if (Platform.isAndroid) { // For devices with Android Lollipop and above
      final intent = AndroidIntent(
        action: 'android.intent.action.CALL',
        data: 'tel:$phoneNumber',
        package: 'com.android.phone',

      );

      intent.launch();
      return true;
    } else {
      return false;
    }
  }
}
