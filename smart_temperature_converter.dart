import 'dart:io';

void main() {
  print("====================================");
  print("       SMART TEMPERATURE CONVERTER");
  print("====================================");
}

double celsiusToFahrenheit(double c) => c * 9 / 5 + 32;
double fahrenheitToCelsius(double f) => (f - 32) * 5 / 9;
double celsiusToKelvin(double c) => c + 273.15;
double kelvinToCelsius(double k) => k - 273.15;
double fahrenheitToKelvin(double f) => (f - 32) * 5 / 9 + 273.15;
double kelvinToFahrenheit(double k) => (k - 273.15) * 9 / 5 + 32;
