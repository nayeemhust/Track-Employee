# Track Employee

Track Employee is a mobile application designed for efficiently tracking employee details. The app features a modern and intuitive user interface with support for onboarding, dark mode, and professional layout designs.

## Features

- **Onboarding Experience:**
  - A four-page onboarding process showcasing the app's key features.
  - Animated system images with scale effects and spring animations.
  - Professional layout with a 'Start Now' button to proceed.

- **Dark Mode Support:**
  - Seamless dark mode integration across all screens.
  - Consistent UI appearance in both light and dark themes.

- **Employee List View:**
  - Search functionality to filter employees by name, department, or role.
  - Refreshable list of team members with real-time updates.

- **Employee Row View:**
  - Displays employee details with a professional design.
  - Includes a circular profile picture and basic information.

- **Settings View:**
  - Displays application information such as developer details and student ID.
  - Provides a clean and simple layout.

## Architecture

The application is built using the **MVVM (Model-View-ViewModel)** architectural pattern:

- **Model:**
  - Represents the data and business logic of the application. It includes data structures and any networking or data persistence logic.

- **View:**
  - Represents the user interface of the application. It displays data from the ViewModel and handles user interactions.

- **ViewModel:**
  - Acts as an intermediary between the Model and the View. It provides data to the View and reacts to user interactions by updating the Model.

This architecture ensures a clear separation of concerns, making the code more maintainable and scalable.


