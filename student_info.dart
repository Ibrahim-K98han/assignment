import 'dart:io';

void main() {
  // ===== Student Info =====
  String? name = stdin.readLineSync(); //Enter name
  int age = int.parse(stdin.readLineSync()!); //Enter age
  String? studentId = stdin.readLineSync(); //Enter student ID
  String? email = stdin.readLineSync(); //Enter email
  String? phoneNumber = stdin.readLineSync(); //Enter phone number (optional)

  print("\n===== Student Information =====\n");
  print("Name: $name");
  print("Age: $age");
  print("Student ID: $studentId");
  print("Email: $email");
  print("Phone: ${phoneNumber ?? "Not Provided"}");

  // ===== Grading System =====
  double totalMarks = double.parse(stdin.readLineSync()!); //Enter total marks
  double obtainedMarks =
      double.parse(stdin.readLineSync()!); //Enter obtained marks
  double percentage = (obtainedMarks / totalMarks) * 100; //Calculate percentage

  String grade;
  if (percentage >= 80) {
    grade = "A+";
  } else if (percentage >= 70) {
    grade = "A";
  } else if (percentage >= 60) {
    grade = "A-";
  } else if (percentage >= 50) {
    grade = "B";
  } else if (percentage >= 40) {
    grade = "C";
  } else if (percentage >= 33) {
    grade = "D";
  } else {
    grade = "F";
  }

  String status = percentage >= 33 ? "Passed" : "Failed";

  print("\n===== Academic Result =====\n");
  print("Total Marks: ${totalMarks.toStringAsFixed(0)}");
  print("Obtained Marks: ${obtainedMarks.toStringAsFixed(0)}");
  print("Percentage: ${percentage.toStringAsFixed(0)}%");
  print("Grade: $grade");
  print("Status: $status");
}
