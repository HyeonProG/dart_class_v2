
void main () {

  // 불변 객체란 메모리에 할당한 뒤 값을 변경할 수 없는 객체이다.
  String a = '야스오';
  print(a.hashCode);
  a = '티모';
  print(a.hashCode);
  // 중요! - a의 메모리 주소에 할당된 공간에 값을 변경한 것이 아니라
  // 새로운 메모리 주소를 할당하고 생성한 것이다.

  // 사용자 정의 클래스(가변 객체) --> 불변 객체로 만들 수 있을까?
  Account a1 = const Account('123');
  Account a2 = const Account('123');
  Account a3 = const Account('123');
  print('----------------------------');
  print(a1.hashCode);
  print(a2.hashCode);
  print(a3.hashCode);

  // 사용자 정의 객체를 불변 객체로 만들면 내부 값을 변경할 수 없다.
  // 안정성이 증가 된다.
  // a3.accountId = 100; --> final이라 값 수정 불가

}

class Account {
  final String accountId;
  // const 단일 라인 생성자
  const Account(this.accountId);
}