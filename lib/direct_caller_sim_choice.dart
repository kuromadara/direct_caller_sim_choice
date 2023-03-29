library direct_caller_sim_choice;

import 'dart:ffi';
import 'dart:io' show Platform;
import 'package:android_intent_plus/android_intent.dart';

class DirectCaller {
  bool makePhoneCall(String phoneNumber, {int simSlot = 1}) {
    if (phoneNumber.length != 10) {
      throw Exception('Phone number must be of 10 digits');
    }
    if (simSlot != 1 && simSlot != 2) {
      throw Exception('Sim slot must be 1 or 2');
    }

    if (Platform.isAndroid) {
      final intent = AndroidIntent(
        action: 'android.intent.action.CALL',
        data: 'tel:$phoneNumber',
        arguments: {
          'com.android.phone.force.slot': true,
          'com.android.phone.extra.slot':
              simSlot - 1, // slot index starts from 0
        },
      );
      intent.launch();

      return true;
    } else {
      return false;
    }
  }
}
