

class Bill {
  double _doctorFees;
  double _pharmacyChargesFees;
  double _roomRentFees;
  double _discount;

  Bill({
    required double doctorFees,
    required double pharmacyChargesFees,
    required double roomRentFees,
    required double discount,
  })  : _doctorFees = doctorFees,
        _pharmacyChargesFees = pharmacyChargesFees,
        _roomRentFees = roomRentFees,
        _discount = discount;

  String todtring() {
    return 'Doctor Fees: $_doctorFees, Pharmacy Charges: $_pharmacyChargesFees, Room Rent: $_roomRentFees, Discount: $_discount%';
  }

  double getBillTotalAmount(int age) {
    // String dateString = '2023-09-18';
    // List<String> dateParts = dateString.split('-');
    // int year = int.parse(dateParts[0]);
    // int month = int.parse(dateParts[1]);
    // int day = int.parse(dateParts[2]);
    // print(day);
    double totalAmount = _doctorFees + _pharmacyChargesFees + _roomRentFees;
    if (age > 50) {
      totalAmount -= (totalAmount * (_discount / 100));
    }
    return totalAmount;
  }
}
