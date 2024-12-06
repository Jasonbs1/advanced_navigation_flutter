# Advanced Navigation and Route Management in Flutter

This Flutter application demonstrates advanced navigation using MaterialApp's routes, onGenerateRoute, and onUnknownRoute. It provides a seamless user experience with static and dynamic screen navigation.

The project includes the following features:

- **Bottom Navigation Bar:** Switch between predefined screens.
- **Drawer Menu:** Quick access to all screens.
- **Dynamic Screen Generation:** Generate multiple screens based on user input.
- **Error Handling for Routes:** Displays a user-friendly error message for unknown routes.


## Overview

This project is an extension of a basic multi-screen Flutter app, implementing more advanced navigation techniques. It covers:

- **Part 1:** Advanced Route Management (Named routes, passing data between screens)
- **Part 2:** Complex Navigation Structure (Bottom navigation bar with separate sections)
- **Part 3:** Dynamic Routing (Generating dynamic screens based on user input)
- **Part 4:** Advanced UI/UX (Custom animations, transitions, and gestures)
- **Part 5:** Error Handling and User Feedback (Handling navigation errors and providing feedback)
- **Part 6:** Documentation and Presentation (Code documentation and summarizing the approach)

## Features

- **Named Routes:** Easily navigate between screens using named routes.
- **Arguments Passing:** Pass data between screens using route arguments.
- **Go Back Button:** Each screen has a button to navigate back to the previous screen.
- **Bottom Navigation Bar:** A navigation bar allows users to switch between different sections of the app.
- **Dynamic Routing:** Users can input a number to generate that number of dynamic screens.
- **Error Handling:** Gracefully handle navigation errors with user feedback via snack bars or custom dialogs.

# Code Documentation

## `main.dart`
This file initializes the application and defines the routes and navigation structure.

### Key Features:
- **`MyApp` Class**: Sets up the `MaterialApp` with predefined routes and dynamic route generation.
- **Error Handling**:
  - `onGenerateRoute`: Dynamically creates routes based on input arguments.
  - `onUnknownRoute`: Provides fallback navigation for undefined routes, showing an error screen.

---

## `first_screen.dart`
Implements the first screen with a **Drawer** and a **Bottom Navigation Bar**.

### Key Features:
- **Navigation Drawer**: Links to all major screens using `Navigator.pushNamed`.
- **Bottom Navigation Bar**: Provides intuitive navigation between screens.

---

## `second_screen.dart`
Displays the second screen with a message and options to navigate back or to the third screen.

### Key Features:
- **Route Argument Passing**: Sends a message to the third screen using `Navigator.pushNamed` with arguments.

---

## `third_screen.dart`
Shows a dynamic message passed from the second screen or a default message.

### Key Features:
- **Persistent Navigation**: Offers navigation to the first screen or back to the previous screen using `Navigator.pushNamedAndRemoveUntil`.

---

## `generate_screen.dart`
Handles dynamic screen generation based on user input.

### Key Features:
- **Input Validation**: Ensures the number of screens is between 1 and 200, showing an error message for invalid input.
- **Dynamic Screen Navigation**: Creates and navigates to multiple screens dynamically.
- **Reusable Widgets**:
  - **`DynamicScreen`**: A widget to display dynamically generated screen content.
  - **`TextField`**: Accepts numeric input for screen generation.

---

## Challenges

- **Making good UI/UX**
- **Encountered error:** "if the home property is specified the routes table cannot include an entry for /". Solution removed the home property and use initialRoute with named routes.
- **Crash:** Not responding when generating more that 500 screen. Solution limited the input to a maximum of 200 screen.
