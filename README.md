# swd_mobile_assessment

## Introduction

This project is in response to Swd Mobile Assessment. it demonstrates the use of various Flutter features and best practices for building a mobile application. The app is designed to provide a smooth user experience with a focus on performance, UI/UX design, and clean architecture.

Key features included in this project:
- Authentication Screen
- Main Page Screens

## Project Structure
The project follows a well-structured directory architecture for easy scalability and maintainability. The structure includes:
```
lib/
├── features
      |--- Screens
      |--- Widgets           
├── Components        
├── Utils/         
└── main.dart      
```

## Requirements

Before setting up the project, ensure you have the following installed on your machine:
- **Flutter SDK** (version 3.24.3 or higher) – [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Android Studio** or **Visual Studio Code** with Flutter/Dart plugins for development
- **Android Emulator** or **iOS Simulator** for running the app
- **Xcode** (for macOS users deploying on iOS)
  
## Setup Instructions

Follow these steps to set up and run the project on your local machine:

### Step 1: Clone the Repository
```bash
git clone https://github.com/dewunmirokeeb/Swd_Mobile_Assessment.git
cd Swd_Mobile_Assessment
```

### Step 2: Install Dependencies
Navigate to the root of your project and install the required Flutter packages:
```bash
flutter pub get
```

### Step 3: Set Up the Environment
- For Android: Ensure Android Studio is set up with an emulator running or a physical device connected.
- For iOS: Open the project in Xcode (for macOS users) and ensure your iOS simulator or physical device is connected.

### Step 4: Run the Project
To run the app on your desired platform (iOS/Android):
```bash
flutter run
```
You can also specify the platform:
- **For iOS**: 
  ```bash
  flutter run -d ios
  ```
- **For Android**: 
  ```bash
  flutter run -d android
  ```

## Troubleshooting

If you encounter issues during setup or running the project, ensure that:
- Flutter and Dart are properly installed by running `flutter doctor` to check for any missing dependencies.
- The Android Emulator or iOS Simulator is correctly configured.
