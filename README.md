# Flutter Development Environment

This bash script installs the required packages for Flutter on MacOS as well as update the zshrc shell to use commands.

## Packages installed

- Homebrew
- VisualStudio Code (optional)
- Android Studio (optional)
- git
- Flutter SDK (which includes the Dart SDK)
- Cocoapods

If you choose to install Android Studio it will also install the following:

- OpenJDK
- Android platform tools, ndk, and android-32

It will also accept the licenses and update some packages.

## Caveats

This script is offered as is and may not work perfectly on all machines.

There is also some additional steps that may be required to begin coding in Flutter, such as:

- Installing the Flutter and Dart extensions to VS Code and Android Studio
- Installing and creating new or additional iOS simulators and Android Emulators
- Adding the Dart SDK path to Android Studio
- Installing additional Android version targets in the SDK Manager

For more information on what your system is missing please run:
> flutter doctor


Visit the Flutter getting started guide for additional information.