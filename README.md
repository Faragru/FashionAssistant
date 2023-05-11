# FashionAssistant

FashionAssistant is a modern iOS application that makes it easy for users to organize their wardrobe and plan their outfits. It leverages the power of Firebase for authentication, data storage, and more.

![App Screenshot](./screenshot.png)

## Features

- **Manage your wardrobe**: Take pictures of your clothes and categorize them.
- **Plan outfits**: Combine clothes from your wardrobe into outfits and save them for later.
- **Firebase Integration**: User authentication and data storage using Firebase.

## Installation

Before you can run the application, you'll need to install and configure a few things.

### Prerequisites

You need to have Xcode installed and a Firebase project set up.

### Firebase Configuration

1. Go to the Firebase Console and create a new project.
2. Add an iOS app to your Firebase project.
3. Download the `GoogleService-Info.plist` file and add it to the root of your Xcode project.

### Installing Dependencies

This project uses Swift Package Manager for dependency management. You can install the dependencies by simply building the project in Xcode.

## Running the App

1. Open the `FashionAssistant.xcworkspace` file in Xcode.
2. Choose the desired simulator and click the run button or press `Cmd+R`.

## Built With

- SwiftUI
- Firebase
  - Firebase Authentication
  - Firebase Firestore
  - Firebase Storage
  - Firebase Crashlytics
  - Firebase Messaging
  - Firebase Analytics
- SDWebImageSwiftUI

## Contributing

We would love your contribution to this project! Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License.
