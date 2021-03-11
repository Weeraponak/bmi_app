import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40) {
      return 'โรคอ้วนขั้นสูงสุด';
    } else if (_bmi > 35.0) {
      return 'โรคอ้วนขั้นที่ 2';
    } else if (_bmi > 28.5) {
      return 'โรคอ้วนขั้นที่ 1';
    } else if (_bmi > 23.5) {
      return 'น้ำหนักเกินแล้ว';
    } else if (_bmi > 18.5) {
      return 'น้ำหนักอยู่ในเกณ์ปกติ';
    } else {
      return 'น้ำหนักต่ำกว่าเกณฑ์';
    }
  }

  String getInterpretation() {
    if (_bmi >= 40) {
      return 'คุณมีน้ำหนักตัวที่สูงมากกว่าปกติ พยายามออกกำลังกายให้มากขึ้น!';
    } else if (_bmi > 35.0) {
      return 'คุณควรออกกำลังกายนะ ก่อนที่คุณจะมีน้ำหนักขึ้นไปอันดับสูงสุด';
    } else if (_bmi > 28.5) {
      return 'คุณควรออกกำลังกายและควรลดอาหารที่ไม่จำเป็น!';
    } else if (_bmi > 23.5) {
      return 'คุณท้วมไปนิด ควรออกกำลังกายนะ!';
    } else if (_bmi > 18.5) {
      return 'คุณมีน้ำหนักตัวปกติ คุณหุ่นดีมาก!!';
    } else {
      return 'คุณมีน้ำหนักตัวต่ำกว่าปกติ คุณควรจะกินมากกว่านี้!';
    }
  }
}
