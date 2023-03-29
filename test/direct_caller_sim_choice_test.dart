import 'package:flutter_test/flutter_test.dart';

import 'package:direct_caller_sim_choice/direct_caller_sim_choice.dart';

void main() {
  test('adds one to input values', () {
    final caller = DirectCaller();
    expect(caller.makePhoneCall('1234567890', simSlot: 1), true);
  });
}
