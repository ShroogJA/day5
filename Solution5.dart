class UserService {
  Password p = Password();
    void Register(String email) {
    if (!Email.ValidateEmail(email)) throw new Exception("Email is not an email");
    //var user = new User(email, password);
    //SendEmail(new MailMessage("mysite@nowhere.com", email) { Subject="HEllo foo" });
  }
    void hashAndSavePassword(String password) {
   p.hashPassword();
    p.savePassword();
  }
}

class Email {
  

 static  bool ValidateEmail(String email) {
    return email.contains("@");
  }

  bool SendEmail(String? message) {
    //_smtpClient.Send(message);
    return true;
  }
}

class Password {


  void hashPassword() {
    //hashing implementation
  }
  void savePassword() {
    //save to the db
  }
}
/** Single Responsibilty principle
 * I used this principle because there is no connection between email operations
 *  and password verification operations. To avoid any mistakes, if something
 *  goes wrong with one of the operations, I called them all in the user services class.
 *  And if I make any intentional changes to the class that requires modification,
 *  the search process for the code that needs modification won't be lengthy.
 */