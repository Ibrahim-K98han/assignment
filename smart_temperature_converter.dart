import 'dart:io';

void main() {
  print("====================================");
  print("       SMART TEMPERATURE CONVERTER");
  print("====================================");

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
    return;
  }

  if (choice == 7) {
    print('Exiting...');
    return;
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
    return;
  }

  switch (choice) {
    case 1:
      print('${temp}°C = ${celsiusToFahrenheit(temp)}°F');
      break;
    case 2:
      print('${temp}°F = ${fahrenheitToCelsius(temp)}°C');
      break;
    case 3:
      print('${temp}°C = ${celsiusToKelvin(temp)} K');
      break;
    case 4:
      print('${temp} K = ${kelvinToCelsius(temp)}°C');
      break;
    case 5:
      print('${temp}°F = ${fahrenheitToKelvin(temp)} K');
      break;
    case 6:
      print('${temp} K = ${kelvinToFahrenheit(temp)}°F');
      break;
  }
}

double celsiusToFahrenheit(double c) => c * 9 / 5 + 32;
double fahrenheitToCelsius(double f) => (f - 32) * 5 / 9;
double celsiusToKelvin(double c) => c + 273.15;
double kelvinToCelsius(double k) => k - 273.15;
double fahrenheitToKelvin(double f) => (f - 32) * 5 / 9 + 273.15;
double kelvinToFahrenheit(double k) => (k - 273.15) * 9 / 5 + 32;
