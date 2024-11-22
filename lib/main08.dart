
void main() {
  
  // 깊은 복사(Depp Copy)란?
  // 값이 동일한 객체를 새롭게 생성하는 것을 의미한다.
  List<int> n1 = [100]; // 객체 생성
  List<int> n2 = n1.toList(); // 깊은 복사

  print(n1 == n2); // false

  n1.add(200); // 객체에 내부 값을 변경
  print(n1.toString());
  print(n2.toString());
  // 깊은 복사를 사용하게 되면 --> 객체의 수정이 일어날 때 의도치 않은 동작을 방지할 수 있다.
  // 메모리를 많이 사용할 수 있다.
  
}