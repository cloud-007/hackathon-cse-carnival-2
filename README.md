# Reachout

A Flutter application built with Clean Architecture developed during a 24-hour [Hackathon](https://github.com/sayedalmahdi/cse-carnival-chapter-2-2023).

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Technologies Used](#technologies-used)

## Introduction

This project is a Flutter application designed to provide users with a seamless experience for consulting services. Developed during a hackathon within 24 hours, the application leverages Clean Architecture principles to ensure maintainability and scalability.

## Features

- **Google Authentication**: Secure authentication using Google Sign-In.
- **Service Consultation**: Browse through various consultation services.
- **Consultant Chat**: Chat with a consultant for personalized advice.
- **Consultant Details**: View detailed information about each consultant.

## Technologies Used

- **Flutter**: UI toolkit for building natively compiled applications.
- **Django**: High-level Python web framework for backend services.
- **Riverpod**: State management solution for Flutter.
- **Dart**: A programming language for Flutter development.

## Getting Started

To get a local copy up and running, follow these steps.

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Included with Flutter
- An IDE with Flutter support (VS Code, IntelliJ, Android Studio)

### Installation

1. Clone the repository:
    ```sh
    git clone git@github.com:cloud-007/hackathon-cse-carnival-2.git
    ```
2. Navigate to the project directory:
    ```sh
    cd your-repo
    ```
3. Install dependencies:
    ```sh
    flutter pub get
    ```
4. Run the app:
    ```sh
    flutter run
    ```

## Project Structure

The project follows the Clean Architecture pattern, which divides the codebase into several layers:

- **lib**
  - **data**: Contains data sources, models, and repositories.
  - **domain**: Includes entities, use cases, and repositories' abstract definitions.
  - **presentation**: Comprises UI, widgets, and state management.


