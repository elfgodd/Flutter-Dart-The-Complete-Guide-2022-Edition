# Flutter & Dart - The Complete Guide [2022 Edition]

A Complete Guide to the Flutter SDK & Flutter Framework for building native iOS and Android apps
Instructor: Academind by Maximilian Schwarzmüller
Course Repository:

## What you'll learn

- Learn Flutter and Dart from the ground up, step-by-step
- Use features like Google Maps, the device camera, authentication and much more!
- Learn all the basics without stopping after them: Dive deeply into Flutter & Dart and become an advanced developer
- Build engaging native mobile apps for both Android and iOS
- Learn how to upload images and how to send manual and automated push notifications

## Course content

19 sections • 378 lectures • 42h 25m total length

- Introduction
- Flutter Basics [QUIZ APP]
- Running Apps on Different Devices & Debugging Apps
- Widgets, Styling, Adding Logic - Building a Real App [PERSONAL EXPENSES APP]
- Responsive & Adaptive User Interfaces and Apps
- Widget & Flutter Internals - Deep Dive
- Navigation & Multiple Screens [MEALS APP]
- State Management [SHOP APP]
- Working with User Input & Forms [SHOP APP]
- Sending Http Requests [SHOP APP]
- Adding User Authentication [SHOP APP]
- Adding Animations [SHOP APP]
- Using Native Device Features (Camera, Maps, Location, ...) [GREAT PLACES APP]
- Firebase, Image Upload, Push Notifications - Building a Chat App
- Running Native Swift, ObjetiveC, Java or Kotlin Code
- Publishing to the App Stores
- Roundup & Next Steps
- Flutter 2 Update
- Roundup

## Section 1: Introduction

### 1. Useful Resources & Links

Official Flutter Docs: https://flutter.io/docs/

macOS Setup Guide: https://flutter.io/setup-macos

Windows Setup Guide: https://flutter.io/setup-windows

Linux Setup Guide: https://flutter.io/setup-linux

Visual Studio Code: https://code.visualstudio.com/

Visual Studio Code Flutter Extension: https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter

Android Studio: https://developer.android.com/studio/

## Section 2: Flutter Basics [QUIZ APP]

### Folder 01: basics

    01-quiz-app, 02-homework-app

### 1. Understanding Lists

If you still want to learn more about lists right now, have a look at this article (Warning: This article contains a lot of information, we'll only dive into later in the course - hence it might be overwhelming right now): https://dart.dev/guides/language/language-tour#lists

You can also check out the official API docs to get more information + a complete list (how meta!) of all default methods you can call on Dart lists: https://api.dartlang.org/stable/2.3.1/dart-core/List-class.html

### 2. "Old" Button Widgets vs "New" Button Widgets

**Old Buttons** This buttons were changed in the newer versions of Flutter

```
RaisedButton  --> ElevatedButton
FlatButton    --> TextButton
OutlineButton --> OutlinedButton

None of the new stuff supports: color, textColor, etc...
```

**New Buttons**

```
// Way number 1
ElevatedButton(
  style: ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.orange),
  foregroundColor: MaterialStatePropertu.all(Colors.white),
  ),
), // Button Style
```

```
// Way number 2
ElevatedButton(
  style: ElevatedButton.styleForm(primary: Colors.orange, onPrimary: Colors.white
  ),
), // Button Style
```

```
TextButton (
  child: Text('A Flat Button'),
  style: TextButton.styleForm(primary: Colors.orange
  ),
), // TextButton
```

```
ElevatedButton(
  style: OutlinedButton.styleForm(
    primary: Colors.orange,
    side: BorderSide(color: Colors.orange),
  ),
), // OutlinedButton
```

### 3. Module Summary

**Dart**

- Object-oriented, strongly typed programming language
- Everything's an object!
- Types: String, num, int, double, List<...>
- Variables, Functions, Properties, Methods
- Constructor functions & shorthands

**Types of Widgets**

- Stateful & Stateless
- Visible (Input / Output) and Invisible (Layout / Control)
- Complex, with lots of config options (e.g. MaterialApp) and simpler (e.g. Text)

**Widgets**

- Your App's UI = Tree of Widgets
- Flutter controls every pixel on the screen
- Two types of Widgets: Stateless and Stateful Widgets
- Widgets have build() methods which return a Widget

**Styling & Positioning**

- Styling and positioning is done via code (=> in the Widget tree)
- Widgets can work together to achieve a certain look / structure

### 4. Module Resources

the following resources might be helpful:

Official Docs: https://flutter.dev/docs

Widget Catalog: https://flutter.dev/docs/development/ui/widgets

Dart Docs: https://dart.dev/guides/language/language-tour

"Introduction to Widgets" - Official Docs:  
https://flutter.dev/docs/development/ui/widgets-intro

## Section 3: Running Apps on Different Devices & Debugging Apps

### Folder 02: debugging

**info:**

- Running the App on Different Platforms & Real Devices
- Reading & Understanding Error Messages
- Using the (VS Code) Debugger
- Using the Dart DevTools & The Flutter Inspector

### 1. Useful Resources & Links

Official Debugging Docs: https://flutter.dev/docs/testing/debugging

Dart Dev Tools: https://flutter.github.io/devtools/

## Section 4: Widgets, Styling, Adding Logic - Building a Real App [PERSONAL EXPENSES APP]

### Folder 03: expenses-app

**info:**

- Widgets, Widgets, Widgets
- Theming & Material Design
- Working with Images & Fonts
- Adding Business Logics to an App

### 1. An Overview of the Core Flutter Widgets

Widget catalog:  
https://docs.flutter.dev/development/ui/widgets

Flutter API reference documentation!:  
https://api.flutter.dev/

**Most Important Widgets**  
App / Page Setup:  
MaterialApp (Android) / CupertinoApp(iOS)  
Scaffold / CupertinoPageScaffold

**Layout:**  
Container, Row, Column

**Row / Column Children:**  
Flexible, Expanded (this 2 can be in either columns or rows)

**Content Containers:** (for holding content)  
Stack: Stack items or widgets on top of each others like images etc.  
Card: Prestyle container widget, with some default styles

**Repeat Elements:** (helps us with repeating content)  
ListView: A Column that is scrollable, because a default Column is not scrollable

GridView: A combination of columns and rows that are not beneath each other but have them ordered as a grid, also scrollable

ListTile: Another core widget that comes with default styles  
and positioning

**Content Types:**
Text, Image, Icon

**User Input**  
TextField, RaisedButton, FlatButton

Build custom widgets and also invisible widgets like:  
GestureDetector or InkWell

### 2. CheatSheet

- Takes as much width as you can get
  `width: double.infinity`

- Example 1: Wrapping a Text in a Container

```
Card(
  color: Colors.blue,
  child: Container(
    width: 100,
    child: Text('CHART')
    ),
  elevation: 5,
),
```

- Example 2: Wrapping a Card in a Container

Problem: Card depends of the size of it's child, unless i have
a parent like Container, that has it's own clearly define width

```
Container(
  width: double.infinity,
  child: Card(
    color: Colors.blue,
    child: Text('CHART'),
    elevation: 5,
  ),
),
```

### 3. Container VS Column / Row

| Container                                               | Column / Row                                              |
| ------------------------------------------------------- | --------------------------------------------------------- |
| Takes exactly one child widget                          | Takes multiple (unlimited) child widgets                  |
| Rich alignment & styling options                        | Alignment but not styling options                         |
| Flexible width (e.g. child width, available width, ...) | always takes full available height (column) / width (row) |
| Perfect for custom styling & alignment                  | Must-use if widgets sit next to / above each other        |

### 4. Installing External Packages & Formatting Dates

DateFormat class:  
https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html

Package for formatting Dates:  
https://pub.dev/packages/intl  
Documentation for this package:  
https://pub.dev/documentation/intl/latest/

`DateFormat('yyyy-MM-dd').format(tx.date),`  
`DateFormat('yyyy/MM/dd').format(tx.date),`

### 5. Working with ListViews

**ListView**:

- ListView(children: []):
  - Renders all the widgets, even if they are offscreen
  - Use this for short list
- ListView.builder():
  - Renders only the widgets that are visible
  - Use this for long list

### 6. Further Input & Output Styling and Configuration

**This makes the device open the keyboard with numbers**
`On Android: TextField(keyboardType: TextInputType.number)`  
`On iOS: TextField(keyboardType: TextInputType.numberWithOptions(decimal: true))`

### 7. Floating Point Math

https://0.30000000000000004.com/

## Section 5: Responsive & Adaptive User Interfaces and Apps

### 1. Working with the "textScaleFactor"

    Working with the "textScaleFactor"
    In this course, I mostly focus on the device sizes (height and width) when it comes to working with the MediaQuery class.

    As mentioned, it offers way more than that of course. On particularly interesting property is the textScaleFactor property:

    final curScaleFactor = MediaQuery.of(context).textScaleFactor;
    textScaleFactor tells you by how much text output in the app should be scaled. Users can change this in their mobile phone / device settings.

    Depending on your app, you might want to consider using this piece of information when setting font sizes.

    Consider this example:

    Text('Always the same size!', style: TextStyle(fontSize: 20));
    This text ALWAYS has a size of 20 device pixels, no matter what the user changed in his / her device settings.

    Text('This changes!', style: TextStyle(fontSize: 20 \* curScaleFactor));
    This text on the other hand also has a size of 20 if the user didn't change anything in the settings (because textScaleFactor by default is 1). But if changes were made, the font size of this text respects the user settings.

### 2. Controlling the Device Orientation

```
void main() {
  // Adjusting App for Landscape Orientation
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(MyApp());
}
```

### 3. Respecting the Softkeyboard Insets

How to Move bottomsheet along with keyboard which has textfield(autofocused is true)?:  
https://stackoverflow.com/questions/53869078/how-to-move-bottomsheet-along-with-keyboard-which-has-textfieldautofocused-is-t/57515977#57515977
