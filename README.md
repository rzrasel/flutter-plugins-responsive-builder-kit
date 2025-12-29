# 🌐 Flutter Responsive Builder Kit

[![ResponsiveBuilderKit](https://img.shields.io/badge/RzRaselFlutter-ResponsiveBuilderKit-blue.svg)](https://github.com/rzrasel/flutter-responsive-builder-kit)
[![Flutter Responsive](https://img.shields.io/badge/flutter-responsive-brightgreen.svg?style=flat-square)](https://github.com/rzrasel/flutter-responsive-builder-kit)
[![pub package](https://img.shields.io/pub/v/responsive_builder_kit.svg)](https://pub.dev/packages/responsive_builder_kit)
![GitHub License](https://img.shields.io/github/license/rzrasel/flutter-responsive-builder-kit)
[![GitHub stars](https://img.shields.io/github/stars/rzrasel/flutter-responsive-builder-kit)](https://github.com/rzrasel/flutter-responsive-builder-kit)

---

## 🚀 responsive_builder_kit

A lightweight Flutter package for building **responsive UI layouts** using breakpoints and screen type helpers.

---

## 🧩 Usage

### 1️⃣ Add library to your `pubspec.yaml`

```yaml
dependencies:
  responsive_builder_kit: ^latest_version
```

---

### 2️⃣ Import library in dart file

```dart
import 'package:responsive_builder_kit/responsive_builder_kit.dart';
```

---

### 3️⃣ Wrap your app widget

```dart
MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    ),
    home: ResponsiveScreenBuilder.builder(
      desktop: (BuildContext context) => HomePage(title: "Responsive Layout Builder"),
      tablet: (BuildContext context) => Container(color:Colors.yellow),
      mobile: (BuildContext context) => OrientationLayoutBuilder(
        portrait: (context) => Container(color:Colors.blue),
        landscape: (context) => Container(color:Colors.black),
      ),
      watch: (BuildContext context) => Container(color:Colors.purple),
    )
);
```

---

### 🔧 Called by breakpoints

```dart
MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    ),
    home: ResponsiveScreenBuilder.builder(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 650, mobile: 650, watch: 250),
      desktop: (BuildContext context) => HomePage(title: "Responsive Layout Builder"),
      tablet: (BuildContext context) => Container(color:Colors.yellow),
      mobile: (BuildContext context) => OrientationLayoutBuilder(
        portrait: (context) => Container(color:Colors.blue),
        landscape: (context) => Container(color:Colors.black),
      ),
      watch: (BuildContext context) => Container(color:Colors.purple),
    )
);
```

---

## 🧠 Conditional statements

### ✅ Without breakpoint

```dart
if(ResponsiveLayoutHelper.isDesktop(context)) {
  print("Desktop mode");
} else if(ResponsiveLayoutHelper.isTablet(context)) {
  print("Tablet mode");
} else if(ResponsiveLayoutHelper.isMobile(context)) {
  print("Mobile mode");
} else if(ResponsiveLayoutHelper.isWatch(context)) {
  print("Watch mode");
}
```

### ✅ With breakpoint

```
if(ResponsiveLayoutHelper.isDesktop(context, minWidth: 900)) {
  debugPrint("Desktop mode 2");
} else if(ResponsiveLayoutHelper.isTablet(context, minWidth: 650, maxWidth: 900)) {
  debugPrint("Tablet mode 2");
} else if(ResponsiveLayoutHelper.isMobile(context, minWidth: 250, maxWidth: 650)) {
  debugPrint("Mobile mode 2");
} else if(ResponsiveLayoutHelper.isWatch(context, maxWidth: 250)) {
  debugPrint("Watch mode 2");
}
```

### 🔥 Use `Responsive` class

```dart
Responsive.init(context: context);

if(Responsive.isDesktopExtraLarge(context)) {
  debugPrint("Extra large screen mode");
} else if(Responsive.isDesktop(context)) {
  debugPrint("Desktop screen mode");
} else if(Responsive.isTablet(context)) {
  debugPrint("Tablet screen mode");
} else if(Responsive.isMobileLarge(context)) {
  debugPrint("Large mobile screen mode");
} else if(Responsive.isMobile(context)) {
  debugPrint("Mobile screen mode");
} else if(Responsive.isWatch(context)) {
  debugPrint("Watch screen mode");
}
```

---

### 🧠 With breakpoint

```dart
Responsive.init(
  context: context,
  breakpoints: DeviceBreakpoints(
    desktop: DeviceBreakpointRange(min: 900, max: double.infinity),
    tablet: DeviceBreakpointRange(min: 650, max: 900),
    mobile: DeviceBreakpointRange(min: 250, max: 650),
    watch: DeviceBreakpointRange(min: 0, max: 250),
  ),
);

if(Responsive.isDesktopExtraLarge(context)) {
  debugPrint("Extra large screen mode");
} else if(Responsive.isDesktop(context)) {
  debugPrint("Desktop screen mode");
} else if(Responsive.isTablet(context)) {
  debugPrint("Tablet screen mode");
} else if(Responsive.isMobileLarge(context)) {
  debugPrint("Large mobile screen mode");
} else if(Responsive.isMobile(context)) {
  debugPrint("Mobile screen mode");
} else if(Responsive.isWatch(context)) {
  debugPrint("Watch screen mode");
}
```

### 🔥 Use `Responsive` class

```dart
Responsive.init(
  context: context,
  breakpoints: DeviceBreakpoints(
    desktop: DeviceBreakpointRange(min: 900, max: double.infinity),
    tablet: DeviceBreakpointRange(min: 650, max: 900),
    mobile: DeviceBreakpointRange(min: 250, max: 650),
    watch: DeviceBreakpointRange(min: 0, max: 250),
  ),
);

if(Responsive.isDesktopExtraLarge(context)) {
  debugPrint("Extra large screen mode");
} else if(Responsive.isDesktop(context)) {
  debugPrint("Desktop screen mode");
} else if(Responsive.isTablet(context)) {
  debugPrint("Tablet screen mode");
} else if(Responsive.isMobileLarge(context)) {
  debugPrint("Large mobile screen mode");
} else if(Responsive.isMobile(context)) {
  debugPrint("Mobile screen mode");
} else if(Responsive.isWatch(context)) {
  debugPrint("Watch screen mode");
}
```

---

## 🛠️ Maintained by

**Rz Rasel**  
Flutter • Responsive Builder Kit • Responsive UI

---

## 📦 Publish in Pub Dev

```bash
flutter pub publish --dry-run
flutter pub publish