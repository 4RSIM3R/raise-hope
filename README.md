## Raise Hope

Sustainable solutions for poverty and connecting communities through gamified volunteerism!

## Overview

This repository contains the source code for RaiseHope app. The app is built using Flutter and follows the Material You design guidelines.

## Project Setup

The setup for this project is pretty straight forward. There are some prerequisites that you need to fulfil before being able to run this project.

### Prerequisites
- Flutter SDK

    You can simply follow [the official guide](https://docs.flutter.dev/get-started/install) to get the Flutter SDK installed on your machine.

- Visual Studio Code or Android Studio

    You can choose either [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio) to develop this project. Although, Android Studio is prefered since it gives you better tooling to develop this app.

## Implementation

The mobile app is the core of the app. This is what the user will use. The app is built using Flutter, which is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.

We chose Flutter since we think it's the best way to build a mobile app since it provides many primitives or building blocks that enables us to develop the app quickly while also maintaining both the performance and the visual aspect.

As the state management, we use the [flutter_bloc](https://pub.dev/packages/flutter_bloc) package since we want to use the BLoC pattern. We also use [dio](https://pub.dev/packages/dio) as the data fetching library because it makes it easier to do data fetching from external source.

### Design

We also decided to use [Material You](https://m3.material.io/) as our design system since it looks beautiful, which is a plus in of itself, but also because it's already baked in into Flutter which can cut off the development time quite significantly.

### Backend

The backend of the app is using [Firebase](https://firebase.google.com/) since it gives us so many building blocks to quickly build our backend without having to write any backend code ourself. We use firebase for each and every of our backend needs starting from registration, authentication, verification, storing the data of the voluntary events, and realtime chat! It's cool that we can have all of this without having to write the logic ourself.
