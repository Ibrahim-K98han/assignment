import 'dart:io';

void main() {
  print("====================================");
  print("       SMART TEMPERATURE CONVERTER");
  print("====================================");

  bool continueProgram = true;

  while (continueProgram) {
    print('\n1. Celsius to Fahrenheit');
    print('2. Fahrenheit to Celsius');
    print('3. Celsius to Kelvin');
    print('4. Kelvin to Celsius');
    print('5. Fahrenheit to Kelvin');
    print('6. Kelvin to Fahrenheit');
    print('7. Exit');

    stdout.write('\nEnter your choice: ');
    int? choice = int.tryParse(stdin.readLineSync() ?? '');

    if (choice == null || choice < 1 || choice > 7) {
      print('Invalid input. Please try again.');
      continue;
    }

    if (choice == 7) {
      print('\nExiting...');
      break;
    }

    String unitLabel;
    switch (choice) {
      case 1:
      case 3:
        unitLabel = 'Celsius';
        break;
      case 2:
      case 5:
        unitLabel = 'Fahrenheit';
        break;
      default:
        unitLabel = 'Kelvin';
    }

    stdout.write('\nEnter temperature in $unitLabel: ');
    double? temp = double.tryParse(stdin.readLineSync() ?? '');

    if (temp == null) {
      print('Invalid number. Please try again.');
      continue;
    }

    String outputLine = '';

    switch (choice) {
      case 1:
        outputLine =
            '$temp°C = ${celsiusToFahrenheit(temp).toStringAsFixed(2)}°F';
        break;
      case 2:
        outputLine =
            '$temp°F = ${fahrenheitToCelsius(temp).toStringAsFixed(2)}°C';
        break;
      case 3:
        outputLine = '$temp°C = ${celsiusToKelvin(temp).toStringAsFixed(2)} K';
        break;
      case 4:
        outputLine = '$temp K = ${kelvinToCelsius(temp).toStringAsFixed(2)}°C';
        break;
      case 5:
        outputLine =
            '$temp°F = ${fahrenheitToKelvin(temp).toStringAsFixed(2)} K';
        break;
      case 6:
        outputLine =
            '$temp K = ${kelvinToFahrenheit(temp).toStringAsFixed(2)}°F';
        break;
    }

    print('\n$outputLine');

    stdout.write('\nDo you want to perform another conversion? (y/n): ');
    String? again = stdin.readLineSync();

    if (again == null || again.toLowerCase() != 'y') {
      continueProgram = false;
    }
  }

  print("\n====================================");
  print("       Thank You!");
  print("       Program Ended");
  print("====================================");
}

double celsiusToFahrenheit(double c) => c * 9 / 5 + 32;
double fahrenheitToCelsius(double f) => (f - 32) * 5 / 9;
double celsiusToKelvin(double c) => c + 273.15;
double kelvinToCelsius(double k) => k - 273.15;
double fahrenheitToKelvin(double f) => (f - 32) * 5 / 9 + 273.15;
double kelvinToFahrenheit(double k) => (k - 273.15) * 9 / 5 + 32;
