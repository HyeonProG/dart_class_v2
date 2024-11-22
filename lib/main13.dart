
void main() {

  // 불변 객체를 사용해야 하는 이유
  // 불변 객체(Immutable Object)
  // 안전한 코드를 강제하여 실수를 줄이고, 얕은 복사와 깊은 복사의 장점을 모두 자연스럽게 활용할 수 있다.

  List<String> str1 = const ['A'];
  List<String> str2 = str1; // 메모리 주소값만 str2에 복사된다. --> 얕은 복사

  print(str1 == str2); // true
  print(identical(str1, str2)); // true
  // 얕은 복사 이기 때문에 메모리 절약

  // const 객체이기 때문에 내부 값은 변경이 안된다.
  // 런타임 시점에 오류 발생
  // str1.add('B');
  // 그럼 불변 객체에 만약 내부 값을 수정해야 한다면
  // 강제로 깊은 복사를 사용해야 한다.
  List<String> str3 = [...str1, 'B'];
  print(str3.toString());

  // 불변 객체로 사용한다면 얕은 복사와 깊은 복사의 장점을 다 가져온다.
  // 1. 객체 수정이 필요한 시점에 강제로 깊은 복사를 사용하도록 한다.
  // 2. 의도치 않은 데이터 변경을 신경 쓰지 않고, 얕은 복사를 통해 메모리 절약을 누릴 수 있다.
  // 3. 값 비교(Value Equallity) 구현 시 의도치 않은 HashCode 변경을 방지할 수 있다.
  // - HashCode가 변경이 되면 Map과 HashCode 기반의 자료형이 의도와 다르게 동작할 수 있다.

}