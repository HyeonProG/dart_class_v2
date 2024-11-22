
void main () {
  // 얕은 복사(Shallow Copy)란?
  // 참조(메모리 주소)만 전달하는 것을 의미한다.
  List<String> title1 = ['바이'];
  List<String> title2 = title1;

  print(title1 == title2); // true

  title2.add('야스오'); // title2 라는 변수를 활용해서 값 추가

  print(title1.toString()); // title1의 값을 출력해 보면 변경 되어 있다.

}