# 📱 String Calculator Flutter App

A beautiful Flutter implementation of the String Calculator following Test-Driven Development (TDD) principles.

## ✨ Features

- ✅ Add numbers from string input
- 🎨 Beautiful Material Design UI
- ⚡ Multiple number addition (comma separated)
- ↵ Newline delimiter support
- 🔧 Custom delimiter support
- 🚫 Negative number detection
- 🔍 Number filtering (>1000 ignored)
- 🎚️ Multi-character delimiters
- 🔣 Multiple delimiters support

## 🛠️ Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/string-calculator-flutter.git
   cd string-calculator-flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 🧪 Testing

This project was built using TDD methodology. Run all tests with:

```bash
flutter test
```

## 📝 Usage Examples

| Input | Output |
|-------|--------|
| "" | 0 |
| "1" | 1 |
| "1,2" | 3 |
| "1\n2,3" | 6 |
| "//;\n1;2" | 3 |
| "//[***]\n1***2***3" | 6 |
| "//[*][%]\n1*2%3" | 6 |
| "1,-2" | Exception: Negatives not allowed |
| "1001,2" | 2 |

## 🏗️ TDD Implementation History

The project was developed commit-by-commit following TDD:

1. Empty string returns 0
2. Single number returns its value
3. Two numbers comma-delimited returns sum
4. Multiple numbers comma-delimited returns sum
5. Newlines between numbers supported
6. Custom delimiters supported
7. Negative numbers throw exception
8. Numbers >1000 are ignored
9. Multi-character delimiters
10. Multiple delimiters support

View full commit history to see the TDD process.

## 📚 Packages Used

- flutter_test (for unit testing)

## 🤝 Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## 📜 License

MIT License

---

Made with ❤️ by Keshav Kumar using Flutter 💙