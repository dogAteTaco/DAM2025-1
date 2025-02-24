class Counter {
  late int _value;
  int get value => _value;

  Counter({ int value = 0}) : _value = value;
  
  void increase({int incrementBy = 1}){
    _value = _value + incrementBy;
  }

  void decrease({int decreaseBy = 1}){
    _value = _value - decreaseBy;
  }

  void reset(){
    _value = 0;
  }
}