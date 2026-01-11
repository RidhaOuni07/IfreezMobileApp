# iFreez Flutter App - Modular Structure

## Project Structure

```
lib/
├── main.dart                      # App entry point
├── constants/
│   └── text_styles.dart          # Text style definitions
├── utils/
│   └── logger.dart               # Logging utility (replaces print statements)
├── screens/
│   ├── home_page.dart            # Main navigation page
│   ├── dbara_screen.dart         # Suggestions/recipes screen
│   ├── stock_screen.dart         # Stock management with Bluetooth
│   ├── music_screen.dart         # Music player (coming soon)
│   ├── control_screen.dart       # Temperature control
│   ├── notes_screen.dart         # Notes functionality
│   └── stats_screen.dart         # Statistics display
└── widgets/
    ├── home_grid.dart            # Home screen grid with navigation cards
    ├── settings_list.dart        # Settings list with toggle switches
    └── back_button_widget.dart   # Reusable back button

```

## Files Overview

### Main Entry
- **main.dart**: Initializes the app and sets system UI preferences

### Constants
- **text_styles.dart**: Contains three text styles (textStyle, textStyle2, textStyle3) used throughout the app

### Utilities
- **logger.dart**: Custom logging utility that replaces `print()` statements with proper debug logging
    - `AppLogger.debug()` - Debug messages
    - `AppLogger.info()` - Info messages
    - `AppLogger.warning()` - Warning messages
    - `AppLogger.error()` - Error messages with stack traces
    - `AppLogger.bluetooth()` - Bluetooth-specific logs
    - `AppLogger.temperature()` - Temperature control logs
    - Only logs in debug mode using Flutter's `debugPrint()`

### Screens
- **home_page.dart**: Main page with bottom navigation between Home and Settings
- **dbara_screen.dart**: Displays recipe suggestions (Ojja)
- **stock_screen.dart**: Shows stock levels with Bluetooth connectivity to track items (tomatoes, potatoes, meat)
- **music_screen.dart**: Placeholder for music functionality
- **control_screen.dart**: Temperature regulation with circular sliders
- **notes_screen.dart**: Notes management using Provider
- **stats_screen.dart**: Statistics visualization

### Widgets
- **home_grid.dart**: Creates the main grid of navigation cards (6 cards total: Dbara, Stock, Music, Control, Notes, Stats)
- **settings_list.dart**: Settings page with three toggle options (Economic mode, Vacation mode, Freeze boost)
- **back_button_widget.dart**: Reusable back navigation button

## Key Features

### Responsive Design
All screens use percentage-based sizing with `MediaQuery`:
- `screenWidth * percentage` for widths
- `screenHeight * percentage` for heights

### Navigation
- Bottom navigation bar switches between Home and Settings
- Each card in the home grid navigates to its respective screen
- Back button widget provides consistent navigation back

### Bluetooth Integration
The Stock screen connects to a Bluetooth device at address "98:DA:60:01:A9:3F" to display real-time inventory data.

## Usage

Replace the original single-file `main.dart` with this modular structure by:
1. Copying all files to your project's `lib` directory
2. Ensuring all dependencies are in your `pubspec.yaml`:
    - flutter_bluetooth_serial
    - toggle_switch
    - font_awesome_flutter
    - sleek_circular_slider
    - provider

## Benefits of This Structure

- **Maintainability**: Each screen is in its own file
- **Reusability**: Common widgets like BackButtonWidget can be reused
- **Scalability**: Easy to add new screens or modify existing ones
- **Organization**: Clear separation between screens, widgets, and constants
- **Readability**: Smaller files are easier to understand and debug
- **Proper Logging**: Custom logger replaces `print()` statements with structured logging