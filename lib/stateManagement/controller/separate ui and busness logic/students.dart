class ExStudents {
  /*Classes can be made obserable by making individuals variable Rx or making the entire class observable*/

  // individuals variables Rx
  // var name = 'John'.obs;
  // var age = 28.obs;

  // to make a entire class observable
  String name;
  int age;
  ExStudents({
    required this.name,
    required this.age,
  });
}
