import 'package:flutter_test/flutter_test.dart';

import 'package:password_encryptor/password_encryptor.dart';

void main() {
  test('adds one to input values', () {
  final passwordEncryptor = PasswordEncryptor(3);
  const originalPassword = 'UDAY#15604';
  final encryptedPassword = passwordEncryptor.encryptPassword(originalPassword);
  print('Encrypted: $encryptedPassword');

  final decryptedPassword = passwordEncryptor.decryptPassword(encryptedPassword);
  print('Decrypted: $decryptedPassword');
  });
}
