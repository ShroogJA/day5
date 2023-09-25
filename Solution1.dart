abstract class Team {
  void AssignTask();
  void CreateSubTask();
}

abstract class Team2 {
  void WorkOnTask();
}
class TeamLead implements Team ,Team2{
  @override
  void AssignTask() {
    // TODO: implement AssignTask
  }

  @override
  void CreateSubTask() {
    // TODO: implement CreateSubTask
  }

  @override
  void WorkOnTask() {
    // TODO: implement WorkOnTask
  }
 
}


class Manager extends Team {
  @override
  void AssignTask() {
    // TODO: implement AssignTask
  }

  @override
  void CreateSubTask() {
    // TODO: implement CreateSubTask
  }

  
}

class Programmer implements Team2{
  @override
  void WorkOnTask() {
    // TODO: implement WorkOnTask
  }
  
}


/** Interface Segregtion principle
 * I used this principle because there are functions used in one
 *  class that are also utilized in another class. If I gather all these functions 
 * into a single interface, I can avoid the need to override all of them when performing inheritance, 
 * and the class doesn't need to implement all of them. This helps to prevent empty functions. 
 * I divided the functions into two separate interfaces for better organization and control.
 */
