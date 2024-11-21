import 'package:equatable/equatable.dart';

void main() {

  // 해시 함수 만들어 보기

  print('a'.hashCode);
  // hashCode란 객체를 고유한 정수 값으로 변환 하는 값을 의미한다.
  // hashCode는 해시 값 이라고도 부른다.

  // 직접 해시 함수를 만들어 보기
  // 1단계
  String text = 'Nike';
  int codeUnit = text.codeUnitAt(0);
  print(codeUnit); // 아스키 코드 값이 반환된다.

  print('------------');
  Football f1 = Football('Nike');
  print(f1.uniCodeHashCode);
  Football f2 = Football('Nike1');
  print(f2.uniCodeHashCode);

  // 해시 코드는 언제 사용이 될까?
  // 해시 자료구조로 이루어진 컬렉션 프레임워크를 사용할 때 해시코드를 사용해서
  // 객체를 빠르게 저장하고 찾고 삭제한다.

  Set<Football> footballSet = {f1};
  Football f3 = Football('Nike');
  // 논리적으로 f1 값이 Nike 이고 f3 값이 Nike
  // 자료구조에서 f1이 들어가 있지만 논리적으로 같은 객체가 있다고 판별하고 싶다면
  print('set 자료구조에서 ${footballSet.contains(f1)}'); // true
  print('set 자료구조에서 ${footballSet.contains(f3)}'); // false --> true

  // f1 객체 생성, f3 객체 생성 --> 가변 객체 --> 항상 새로운 메모리를 할당 받고 그 공간에 값을 저장
  // dart에서는 객체 비교를 주소 기반 비교
  print(f1 == f3); // false --> true
  // 2단계 -- 객체 동등성 비교란 결과적으로
  // 객체 주소 기반에서 객체 값 비교 기반으로 변경하는 행위 이다.

  // hashCode 재정의, operator == 재정의를 하면 객체를 값 비교 기반으로 변경할 수 있다.
  // 반복적인 코드를 매번 작성해야 하기 때문에 Equatable

}

// 객체를 값 비교 기반으로 만들 수 있다.
class Football extends Equatable {
  String brand;
  Football(this.brand);

  // dart가 알아서 (특정 알고리즘) 만들어 준 고유한 정수 값
  @override
  int get hashCode => super.hashCode;

  // 내가 직접 정의한 해시 함수
  int get uniCodeHashCode {
    int hash = 0;
    for (int i = 0; i < brand.length; i++) {
      hash += brand.codeUnitAt(i);
    }
    return hash;
  }

  @override
  List<Object?> get props => [this.brand];

}