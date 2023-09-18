import 'Bill.dart';
import 'doctor.dart';
import 'patient.dart';
import 'person.dart';

void main() {
  Person person = Person(id: 'A23sm', firstName: 'shroog', lastName: 'alamery');
  print(person.tostring());

  Doctor doctor = Doctor(
      id: '78948hh',
      firstName: 'noor',
      lastName: 'ahmed',
      specialty: 'dentist');
  print(doctor.tostring());
  Patient patient = Patient(
      id: 'hh8998',
      firstName: 'heba',
      lastName: 'Alzbadi',
      birthdate: '01/01/1999',
      physicianName: 'Dr. ahmed');
  Patient patient1 = Patient(
      id: 'hh8j128',
      firstName: 'hedah',
      lastName: 'Alzbadi',
      birthdate: '01/01/2000',
      physicianName: 'Dr. ahmed');

  print(patient.toString());
  print(patient1.toString());

  var bill = Bill(
      doctorFees: 100.0,
      pharmacyChargesFees: 50.0,
      roomRentFees: 200.0,
      discount: 30.0);
  print(bill.todtring());
  print(bill.getBillTotalAmount(60));
}
//1'Total Amount: ${bill.getBillTotalAmount(60,)}'
