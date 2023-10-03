class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Teacher extends Person {
  int totalPublications;

  Teacher(String name, int age, this.totalPublications) : super(name, age);
}

class Student extends Person {
  double cgpa;

  Student(String name, int age, this.cgpa) : super(name, age);
}

void main() {
  List<Person> people = [
    Teacher("Teacher 1", 35, 10),
    Teacher("Teacher 2", 42, 15),
    Student("Student 1", 20, 3.5),
    Student("Student 2", 22, 3.2),
  ];

  int totalPublications = 0;
  double totalCGPA = 0.0;
  int studentCount = 0;

  for (var person in people) {
    if (person is Teacher) {
      totalPublications += person.totalPublications;
    } else if (person is Student) {
      totalCGPA += person.cgpa;
      studentCount++;
    }
  }

  double averageCGPA = totalCGPA / studentCount;

  print("Total Publications of Teachers: $totalPublications");
  print("Average CGPA of Students: $averageCGPA");
}
