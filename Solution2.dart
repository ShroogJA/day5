abstract class Notification {
  void send();
}

class Gmail implements Notification {
  @override
  void send() {
    print('This is a Gmail message');
  }
}

class Yahoo implements Notification {
  @override
  void send() {
    print('This is a Yahoo message');
  }
}

class Hotmail extends Notification {
  @override
  void send() {
    print('This is a Hotmail message');
  }
}

class Send {
  void processSend(Notification notification) {
    notification.send();
  }
}

void main() {
  Send send = Send();
  send.processSend(Hotmail() );
  send.processSend(Gmail() );
  send.processSend(Yahoo());
}
/** Open closed principle
 * I used this principle because if the required operations to be printed increase beyond email types,
 *  I would need to call the function and create a new class.
 *  This principle helps you to expand without modifying the previous code
 * 
 */