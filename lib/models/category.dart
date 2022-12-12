class Category {
  final String? name;
  final String? imgCategory;

  Category({this.imgCategory, this.name});

  static final allCategory = [
    Category(name: 'Home Lon', imgCategory: 'assets/svg/camera.svg'),
    Category(name: 'Car Lon', imgCategory: 'assets/svg/car.svg'),
    Category(name: 'Student Lon', imgCategory: 'assets/svg/calender.svg'),
    Category(name: 'Mobile Lon', imgCategory: 'assets/svg/icon_test.svg'),
    // Category(name: 'Mobile Lon', imgCategory: 'assets/svg/icon_test.svg'),
  ];
}
