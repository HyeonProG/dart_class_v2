
void main() {

  // List 중첩된 객체 복사 방법

  List<List<String>> a = [['홍길동'], ['이순신']];

  List<List<String>> b = a.toList();

  print(b.toString());

  print(a == b); // false
  print('----------');

  a[0][0] = '티모';
  print(a.toString());
  print(b.toString()); // b 의 내부 리스트 값도 함께 변경 되었음

  // 요약
  // 첫 번째 배열은 toList()를 사용해서 새로운 객체 배열을 생성 했다.
  // 하지만, 내부 배열은 주소값으로 복사 되었기 때문에(얕은 복사)
  print(a[0][0] == b[0][0]);

  // 결론은 List 중첩일 때
  // 중첩된 내부 객체도 별도로 복사해야 한다.

}