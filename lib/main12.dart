
void main () {

  // List 중첩일 때 복사 방법
  List<List<int>> a = [[1, 2], [3, 4]];
  List<List<int>> b = []; // 새로운 객체 생성 후 메모리 주소 반환

  // 1 번째 방법
  // 1. [1, 2]
  // 2. [3, 4]
  for (List<int> innerList in a) {
    // 내부 배열을 담을 수 있는 List 상자가 필요하다.
    List<int> newList = [];
    for (int item in innerList) {
      newList.add(item);
    }
    // 0번째 인덱스 결과
    // [1, 2] 라는 새로운 리스트 생성
    b.add(newList); // 1 --> [[1, 2]] / 2--> [[1, 2], [3, 4]]
  }
  // 중첩된 List 깊은 복사 여부 값 확인
  // 테스트
  a[0][0] = 100;
  print('b : ${b.toString()}'); // 내부도 깊은 복사가 되어서 의도하지 않은 수정을 막을 수 있다.

  // 2번째 방법 : map() 함수의 활용
  List<List<int>> c = a.map((i) => i.toList()).toList(); // 내부까지 깊은 복사가 되었다.
  a[0][0] = 500;
  print(c.toString());

  // 코드 흐름 파악하기
  // 먼저 map() 이라는 함수는 내부 갯수 만큼 반복을 한다. --> map() 내부의 값을 변경할 때 많이 사용하는 API
  // i : 0번째는 내부 리스트 [1, 2]를 의미 한다. --> [1, 2].toList() --> 깊은 복사 --> 새로운 내부 리스트 생성
  // i : 1번째는 내부 리스트 [3, 4]를 의미 한다. --> [3, 2].toList() --> 깊은 복사 --> 새로운 내부 리스트 생성
  // (i) --> i.toList() 동작을 (2번) 다 하면 --> 객체의 타입이 Iterable 타입이 된다.
  // Iterable 타입이 된다 --> map([1, 2], [3,4]) --> map([1, 2], [3,4]).toList() --> List 반환
  List<List<int>> d = a.map((i) => i.toList()).toList();
  print('d 의 결과 타입은 : ${d.runtimeType}');

}