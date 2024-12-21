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
    await $(Keys.elementB).waitUntilVisible();
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
}
