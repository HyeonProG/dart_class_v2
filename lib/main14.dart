
void main() {
  // 불변 객체의 특징

  // 1. 값 수정 불가
  // 한번 생성된 데이터는 변경되지 않아 예기치 않은 변경으로 부터 안전하다.
  // 동일한 메모리를 재활용하는 얕은 복사도 가능(메모리 효율)
  // 멀티 스레드 환경에서도 동기화 문제 최소와
  // - 데이터 변경 위험 없음(경합 상태를 막는다 - 한 스레드가 데이터를 수정한 후 다른 스레드가 제대로 변경 못하게 막는 것)
  // - 공유 안정성 : 여러 스레드가 동시에 읽더라도 충돌이 발생하지 않는다.
  // - synchronized 블록이 필요하지 않는다.

  // 객체 3개 생성 - 개별 참조가 가능
  List<double> d1 = [];
  List<double> d2 = [];
  List<double> d3 = [];

  // 객체 1개 생성 - 메모리 절약
  const List<double> const1 = [];
  const List<double> const2 = [];
  const List<double> const3 = [];

  print(identical(const1, const2));
  print('--------------');

  Post p1 = const Post('1');

  // p1.title = 'dart 문법'; --> 오류
  p1 = const Post('dart 문법');

}

// 사용자 정의 객체를 불변 객체로 생성하도록 클래스를 설계하고 싶다면 문법이 필요하다.
class Post {
  // 모든 멤버는 반드시 final이어야 한다.
  final String title;
  // const 단일 라인 생성자
  const Post(this.title);
}