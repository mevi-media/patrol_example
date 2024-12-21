import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart';

void main() {
  patrolTest('toggle Element A and B by their keys',
      config: const PatrolTesterConfig(
        printLogs: true,
        settlePolicy: SettlePolicy.trySettle,
      ),
      framePolicy: LiveTestWidgetsFlutterBindingFramePolicy.fullyLive,
      ($) async {
    await $.pumpWidgetAndSettle(const MyApp());

    // Element A is visible by default.
    await $(Keys.elementA).waitUntilVisible();
    expect($(Keys.elementA).visible, equals(true));

    // let's toggle it and Element B should be visible
    await $(Keys.button).tap();
    await $(Keys.elementB).waitUntilVisible(); // <-- FAILS HERE
    expect($(Keys.elementB).visible, equals(true));

    // let's toggle it again and Element A should be visible but an error will be thrown
    await $(Keys.button).tap();
    await $(Keys.elementA).waitUntilVisible();
    expect($(Keys.elementA).visible, equals(true));

    // let's toggle it and Element B should be visible
    await $(Keys.button).tap();
    await $(Keys.elementB).waitUntilVisible();
    expect($(Keys.elementB).visible, equals(true));
  });

  patrolTest('toggle Element A and B by their Class',
      config: const PatrolTesterConfig(
        printLogs: true,
        settlePolicy: SettlePolicy.trySettle,
      ),
      framePolicy: LiveTestWidgetsFlutterBindingFramePolicy.fullyLive,
      ($) async {
    await $.pumpWidgetAndSettle(const MyApp());

    // Element A is visible by default.
    await $(ElementA).waitUntilVisible();
    expect($(ElementA).visible, equals(true));

    // let's toggle it and Element B should be visible
    await $(Keys.button).tap();
    await $(ElementB).waitUntilVisible(); // <-- FAILS HERE
    expect($(ElementB).visible, equals(true));

    // let's toggle it again and Element A should be visible but an error will be thrown
    await $(Keys.button).tap();
    await $(ElementA).waitUntilVisible();
    expect($(ElementA).visible, equals(true));

    // let's toggle it and Element B should be visible
    await $(Keys.button).tap();
    await $(ElementB).waitUntilVisible();
    expect($(ElementB).visible, equals(true));
  });

  patrolTest('toggle Element A and B by their Text',
      config: const PatrolTesterConfig(
        printLogs: true,
        settlePolicy: SettlePolicy.trySettle,
      ),
      framePolicy: LiveTestWidgetsFlutterBindingFramePolicy.fullyLive,
      ($) async {
    await $.pumpWidgetAndSettle(const MyApp());

    // Element A is visible by default.
    await $('Element A').waitUntilVisible();
    expect($('Element A').visible, equals(true));

    // let's toggle it and Element B should be visible
    await $(Keys.button).tap();
    await $('Element B').waitUntilVisible();
    expect($('Element B').visible, equals(true));

    // let's toggle it again and Element A should be visible but an error will be thrown
    await $(Keys.button).tap();
    await $('Element A').waitUntilVisible();
    expect($('Element A').visible, equals(true));

    // let's toggle it and Element B should be visible
    await $(Keys.button).tap();
    await $('Element B').waitUntilVisible();
    expect($('Element B').visible, equals(true));
  });
}
