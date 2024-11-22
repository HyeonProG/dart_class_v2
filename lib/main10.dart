
void main () {
  // List 계열에서 깊은 복사 방법

  List<int> a = [1, 2];

  // 1. toList() 사용
  List<int> b = a.toList();

  // 2. 스프레드 연산자(전개 연산자)
  List<int> c = [...a];

  // 3. 반복문의 활용
  List<int> d = [for(var i in a) i];

  print(b.toString());
  print(c.toString());
  print(d.toString());

}