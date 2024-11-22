
void main() {

  // 만약 깊은 복사를 해야 된다면 하는 방법을 알아야 한다.
  // 데이터 구조에 따라서 약간 다를 수 있다.
  // Map, List, Set, custom Object

  // 1. Map 구조 일 때 깊은 복사 방법
  Map<int, String> a = {1 : '업무1'};
  Map<int, String> b = a; // 얕은 복사

  print(a == b); // true

  // 깊은 복사 [...] 스프레드 연산자(전개 연산자)
  Map<int, String> c = {...a};
  // 하나의 요소를 추가하고 싶다면?
  Map<int, String> d = {...a, 2 : '업무2'};

  print(c.toString());
  print(d.toString());

}