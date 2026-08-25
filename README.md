# Flutter Activity 2 & 3

A Flutter layout activity that demonstrates **EdgeInsets (padding/insets)** as well as **Main Axis**, **Cross Axis**, and **Baseline** alignment for `Row` and `Column` widgets using colored containers.

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.x-blue" alt="Flutter"/>
  <img src="https://img.shields.io/badge/Dart-3.x-0175C2" alt="Dart"/>
  <img src="https://img.shields.io/badge/License-MIT-green" alt="License"/>
</p>

---

## App Overview

The app is organized into two tabs:

- **Insets** — visual demos of padding with `EdgeInsets.all`, `EdgeInsets.symmetric`, `EdgeInsets.only`, and `EdgeInsets.fromLTRB`
- **Alignments** — a menu of buttons; tapping a button opens that alignment's **dedicated page**, where each example fills one screen and you **swipe horizontally** through them (with an app bar **back button** to return to the menu):

  | Section                    | Values                                                                  |
  |----------------------------|-------------------------------------------------------------------------|
  | Row Main Axis              | `center`, `spaceAround`, `spaceBetween`, `spaceEvenly`, `start`, `end`   |
  | Row Cross Axis             | `start`, `end`, `center`, `stretch`                                      |
  | Row Baseline               | `CrossAxisAlignment.baseline` with `TextBaseline.alphabetic`             |
  | Column Main Axis           | `center`, `spaceAround`, `spaceBetween`, `spaceEvenly`, `start`, `end`   |
  | Column Cross Axis          | `start`, `end`, `center`, `stretch`                                      |

> Note: baseline alignment only works on horizontal `Row`s — it throws on vertical `Column`s, which is why there is no column baseline section.

---

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the App](#running-the-app)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Customization](#customization)
- [License](#license)

---

## Prerequisites

Before you begin, make sure you have the following installed on your machine:

### 1. Flutter SDK
This project requires **Flutter 3.x** with **Dart 3.x**.

- Download and install Flutter from the [official website](https://docs.flutter.dev/get-started/install)
- Verify the installation:

```bash
flutter --version
```

### 2. Git (Optional)
Recommended for cloning the repository:

```bash
git --version
```

### 3. A Device or Emulator
To run the app you need one of the following:

- **Android emulator** (Android Studio + AVD)
- **Physical device** with USB debugging enabled
- **Windows desktop** / **Chrome (web)** / **iOS simulator** (macOS only)

---

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/90377Sednaaa/Flutter-Activity-2.git
cd Flutter-Activity-2
```

### 2. Install dependencies

Run the following command in the project root to fetch all packages:

```bash
flutter pub get
```

This downloads all the packages listed in `pubspec.yaml`, including:

| Package            | Purpose                                   |
|--------------------|-------------------------------------------|
| `flutter`          | Flutter SDK (framework & widgets)         |
| `cupertino_icons`  | iOS-style icons                           |
| `flutter_test`     | Unit and widget testing (dev dependency)  |
| `flutter_lints`    | Recommended Dart/Flutter lints (dev)      |

### 3. Verify dependencies

You can verify that everything resolved correctly with:

```bash
flutter doctor
```

---

## Running the App

### With Hot Reload (VS Code / Android Studio)

1. Open the project folder in your editor
2. Select a device (emulator, physical device, or browser)
3. Press **F5** or run:

```bash
flutter run
```

### Selecting a specific device

```bash
flutter devices          # list available devices
flutter run -d <device>  # run on a specific device
```

Example:

```bash
flutter run -d chrome        # run in Chrome
flutter run -d windows       # run as a Windows desktop app
flutter run -d emulator-5554 # run in Android emulator
```

### Running tests

```bash
flutter test
```

The widget tests cover the home tabs, the alignment menu navigation (open a section page → back button), and verify that `CrossAxisAlignment.stretch` really stretches its children.

### Building a release APK (Android)

```bash
flutter build apk --release
```

The APK will be generated at:

```
build/app/outputs/flutter-apk/app-release.apk
```

---

## Project Structure

The codebase is modularized: one file per feature/widget, and **one file per alignment section**.

```
lib/
├── main.dart                          # Entry point + MaterialApp root
├── screens/
│   └── home_page.dart                 # AppBar + Insets/Alignments tab switching
├── tabs/
│   ├── insets_tab.dart                # EdgeInsets examples
│   ├── alignments_tab.dart            # Alignment menu (buttons open dedicated pages)
│   └── alignment_sections/
│       ├── section_screen.dart        # Shared page shell: AppBar + back button + swipe PageView + dots
│       ├── row_main_axis_section.dart
│       ├── row_cross_axis_section.dart
│       ├── row_baseline_section.dart
│       ├── column_main_axis_section.dart
│       └── column_cross_axis_section.dart
└── widgets/
    └── example_card.dart              # Shared bordered card (label + demo child)

android/                   # Android platform configuration
test/                      # Widget tests (widget_test.dart, stretch_test.dart)
pubspec.yaml               # Project metadata and dependencies
pubspec.lock               # Locked dependency versions
analysis_options.yaml      # Lint rules configuration
```

---

## Dependencies

All dependencies are managed through `pubspec.yaml`.

### Adding a new dependency

```bash
flutter pub add <package_name>
```

### Updating dependencies

```bash
flutter pub upgrade
```

### Checking for outdated packages

```bash
flutter pub outdated
```

---

## Customization

Each alignment lives in its own file under `lib/tabs/alignment_sections/`. To experiment:

1. Open any `*_section.dart` file
2. Change the `mainAxisAlignment` or `crossAxisAlignment` value on its `Row`/`Column`, or tweak sizes/colors of the demo boxes
3. Save and hot reload (press **`r`** in the running terminal)

```dart
ExampleCard(
  label: "Space Between",
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, // try other values
    children: [
      Container(width: 100, height: 100, color: Colors.red),
      Container(width: 90, height: 90, color: Colors.yellow),
      Container(width: 80, height: 80, color: Colors.blue),
    ],
  ),
)
```

Insets demos live in `lib/tabs/insets_tab.dart`:

```dart
Container(
  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10), // try other insets
  color: Colors.yellow,
  child: const Text("EdgeInsets.symmetric(...)"),
)
```

To add a brand-new alignment section, copy an existing `*_section.dart`, adjust it, and register it in the menu inside `lib/tabs/alignments_tab.dart`.

---

## License

This project is provided for educational purposes. Feel free to use and modify it for your own learning.

---

_Developed with Flutter._
