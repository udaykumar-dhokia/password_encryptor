class PasswordEncryptor {
  final int _shift; // Shift value for the Caesar cipher

  PasswordEncryptor(this._shift);

  /// Encrypts the given password and returns a 16-character string
  String encryptPassword(String password) {
    String encrypted = _caesarCipher(password, _shift);
    return encrypted.padRight(16, '0').substring(0, 16);
  }

  /// Decrypts the given encrypted text back to the original password
  String decryptPassword(String encryptedText) {
    String trimmedText = encryptedText.replaceAll(RegExp(r'0+$'), ''); // Remove trailing zeros
    return _caesarCipher(trimmedText, -_shift);
  }

  /// A Caesar cipher implementation that handles all printable ASCII characters
  String _caesarCipher(String text, int shift) {
    final buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      var charCode = text.codeUnitAt(i);
      if (charCode >= 32 && charCode <= 126) {
        // Printable ASCII characters range from 32 to 126
        charCode = 32 + (charCode - 32 + shift) % 95; // Wrap around within the printable range
        if (charCode < 32) {
          charCode += 95; // Adjust if the code falls below 32 after shifting
        }
      }
      buffer.writeCharCode(charCode);
    }
    return buffer.toString();
  }
}
