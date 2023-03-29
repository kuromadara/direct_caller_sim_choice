<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Direct Caller with SIM Choice

`direct_caller_sim_choice` is a Dart library for Flutter that allows you to make phone calls directly from your app, with an option to select the SIM card for devices that have dual SIM support.
## Features

Makes Call Directly without user interaction. Ideal for application that has emergency call services. One examlple would be a distress app that makes phone call when phone is shaked three times.

## Getting started

## Installation

Add direct_caller_sim_choice as a dependency in your pubspec.yaml file:

```yaml
dependencies:
  direct_caller_sim_choice: ^1.0.1
```
## Usage

Import the library:

```dart
import 'package:direct_caller_sim_choice/direct_caller_sim_choice.dart';
```

To make a phone call, simply call the `makePhoneCall` method:

```dart
final DirectCaller directCaller = DirectCaller();
directCaller.makePhoneCall('1234567890', simSlot: 2);
```

**NOTE** The phone number must be a string with 10 digits. The `simSlot` parameter is optional and defaults to 1 (the first SIM card slot). If the device does not support dual SIM, the library will use the first SIM card slot.

## Platform Support

`direct_caller_sim_choice` currently supports only Android devices. On other platforms, the library returns `false` when the `makePhoneCall` method is called.

## Permissions

In your app's `AndroidManifest.xml` file, make sure you have the CALL_PHONE permission:

```xml
<uses-permission android:name="android.permission.CALL_PHONE" />
```

## Contributions

Contributions are welcome! Feel free to submit a pull request or open an issue if you find a bug or have a feature request.


