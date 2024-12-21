# patrol_example

An Example to reproduce the `waitUntilVisible()` bug in Patrol.

Testing `waitUntilVisible()` on a Widget by it's **Key** or by it's **Class** will fail if the Widget contains a Column with a SizedBox. Remove the SizedBox, the Column can be maintained, and the Test will pass.

If you test it by it's **Text** content it will also pass.
