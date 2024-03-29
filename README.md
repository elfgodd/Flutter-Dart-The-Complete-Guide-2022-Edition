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

## Resources:

- https://docs.flutter.dev/development/ui/widgets
- https://flutterbyexample.com/lesson/dynamic
- unique id generation: https://pub.dev/packages/uuid

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

### 8. Useful Resources & Links

resources might be helpful:

More on Layouting (with Column(), Row() etc.): https://flutter.dev/docs/development/ui/layout

More on Images & Assets: https://flutter.dev/docs/development/ui/assets-and-images

Official Widget Catalog: https://flutter.dev/docs/development/ui/widgets

Material Design Docs: https://material.io/design/

Flutter Theming: https://flutter.dev/docs/cookbook/design/themes

ListTile class Null safety:  
A single fixed-height row that typically contains some text as well as a leading or trailing icon.  
https://api.flutter.dev/flutter/material/ListTile-class.html

## Section 5: Responsive & Adaptive User Interfaces and Apps

### Folder 03: expenses-app

#### 1. Some buttons are replaced by new types. Here is the fix:

IY: Some buttons are replaced by new types

FlatButton => TextButton,

RaisedButton => ElevatedButton,

OutlineButton => OutlinedButton

https://docs.flutter.dev/release/breaking-changes/buttons

https://docs.google.com/document/d/1yohSuYrvyya5V1hB6j9pJskavCdVq9sVeTqSoEPsWH0/edit#

Here is the updated code:

Was:

```
RaisedButton(
  child: Text('Add Transaction'),
  color: Theme.of(context).primaryColor,
  textColor: Theme.of(context).textTheme.button.color,
  onPressed: _submitData,
)
```

New:

```
ElevatedButton(
  child: Text('Add Transaction'),
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).textTheme.button.color),
    backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
  ),
)
```

Was:

```
TextButton.icon(
    icon: Icon(Icons.delete),
    label: Text('Delete'),
    textColor: Theme.of(context).errorColor,
    onPressed: () => deleteTx(transactions[index].id),
  )
```

New:

```
TextButton.icon(
    icon: Icon(Icons.delete),
    label: Text('Delete'),
    style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).errorColor)),
    onPressed: () => deleteTx(transactions[index].id),
  )
```

## section6 Useful Resources & Links

- Official Flutter Widget Intro + Deep Dive:
- Part 1 (Stateless Widgets): https://www.youtube.com/watch?v=wE7khGHVkYY
- Part 2 (Stateful Widgets, Widget Tree, Element Tree): https://www.youtube.com/watch?=AqCMFXEmf3w
- Part 3 (Inherited Widget/ Context): https://www.youtube.com/watch?v=Zbm3hjPjQMk
- Part 4 (Keys): https://www.youtube.com/watch?v=kn0EOS-ZiIc
- App Lifecycle: https://medium.com/pharos-production/flutter-app-lifecycle-4b0ab4a4211a

## Section 1: Navigation & Multiple Screens [MEALS APP]

### 1. Useful Resources & Links
