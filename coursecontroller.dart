import 'course.dart';


class Controllercourse {
  List<Course> courses = [];
  addcourssesmain(List<Course> courveiw) {
    courses.forEach((element) {
      courses.add(element);
    });
  }

  addcourse(Course co1) {
    courses.add(co1);
  }

  removecourse(String name) {
    courses.forEach((element) {
      if(element.name==name)
      {
       courses.remove(element); 
      }
    });
    
  }

  displaycourse(String name) {
    if (name == "all") {
      courses.forEach((element) {
        print(
            "course name:${element.name} course hour:${element.hour},course fees:${element.fees}");
      });
      
    } else {
      courses.forEach((element) {
        if (name == element.name) {
          print(
              "course name:${element.name} course hour:${element.hour},course fees:${element.fees}");
        }
      });
    }
  }

  // updateStudent(String name) {}
}
