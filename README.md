# Flutter Activity 2 & 3

A Flutter layout activity that demonstrates **EdgeInsets (padding/insets)** as well as **Main Axis** and **Cross Axis** alignment for both `Row` and `Column` widgets using colored containers.

The app is organized into two tabs:

- **Insets** — visual demos of padding with `EdgeInsets.all`, `EdgeInsets.symmetric`, `EdgeInsets.only`, and `EdgeInsets.fromLTRB`
- **Alignments** — scrollable, full-screen examples of layout alignment:

  | Group                     | Values                                                        |
  |---------------------------|---------------------------------------------------------------|
  | Row Main Axis             | `start`, `center`, `end`, `spaceAround`, `spaceBetween`, `spaceEvenly` |
  | Row Cross Axis            | `start`, `center`, `end`, `stretch`                           |
  | Column Main Axis          | `start`, `center`, `end`, `spaceAround`, `spaceBetween`, `spaceEvenly` |
  | Column Cross Axis         | `start`, `center`, `end`, `stretch`                           |

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.x-blue" alt="Flutter"/>
  <img src="https://img.shields.io/badge/Dart-3.x-0175C2" alt="Dart"/>
  <img src="https://img.shields.io/badge/License-MIT-green" alt="License"/>
</p>

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

The project uses the standard Flutter dependencies. Run the following command in the project root to fetch all packages:

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

```
lib/
└── main.dart              # Main application code (tabs, insets & alignment demos)

android/                   # Android platform configuration
test/                      # Widget/unit tests (widget_test.dart, stretch_test.dart)
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

The app is built entirely in `lib/main.dart`. It uses a `TabController` with two tabs (`InsetsTab` and `AlignmentsTab`). To experiment:

1. Open `lib/main.dart`
2. Modify the `mainAxisAlignment` or `crossAxisAlignment` values on the `Row`/`Column` widgets in `AlignmentsTab`, or tweak the `EdgeInsets` values in `InsetsTab`
3. Save and hot reload (press **`r`** in the running terminal, or `Shift + R` for a full restart)

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween, // try other values
  crossAxisAlignment: CrossAxisAlignment.center,     // try start / stretch
  children: [...],
)
```

```dart
Container(
  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10), // try other insets
  color: Colors.yellow,
  child: const Text("EdgeInsets.symmetric(...)"),
)
```

---

## License

This project is provided for educational purposes. Feel free to use and modify it for your own learning.

---

_Developed with Flutter._