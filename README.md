<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

## Password Encrpytor

A simple Flutter package to encrypt and decrypt passwords.

## Features

- Encrypts passwords to a 16-character string.
- Decrypts encrypted passwords back to the original.
- Handles all printable ASCII characters, including letters, numbers, and symbols.

## Getting started

flutter pub add password_encryptor

## Usage

```dart
import 'package:password_encryptor/password_encryptor.dart';

void main() {
  final passwordEncryptor = PasswordEncryptor(3); // Shift value of 3 for Caesar cipher

  const originalPassword = 'mypassword';
  final encryptedPassword = passwordEncryptor.encryptPassword(originalPassword);
  print('Encrypted: $encryptedPassword');

  final decryptedPassword = passwordEncryptor.decryptPassword(encryptedPassword);
  print('Decrypted: $decryptedPassword');
}

```