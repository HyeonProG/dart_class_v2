
void main() {
  // 객체 비교와 객체 동등성 재정의
  // dart에서는 기본적으로 객체를 비교할 때 주소값으로 비교 처리
  // 플러터에서 동일한 위젯을 재사용할 수 있다면 이미 만들어진 객체를
  // 재사용하여 메모리 낭비를 줄일 수 있다.

  // const Conatiner(), const Container(),

  var a = Object();
  var b = Object();
  // identical(a, b) 함수는 객체가 동일한 메모리를 참조하는 판별하는 기능 이다.
  bool result = identical(a, b);
  print(result); // false

  // Book, Book --> title, author 가 같다면 동일한 객체로 즉, 논리적인 객체로
  // 같은 객체다 라고 구현을 해야 된다면
  // 객체 동등성 재정의를 해주어야 한다.
  print('------------------');
  print(Book('다트') == Book('다트')); // <-- 논리적으로 같은 객체라고 판별하고 싶다면 동등성 재정의가 필요하다.
  
}

class Book {
  String title;
  Book(this.title);

  // hashCode, operator를 재정의 해야한다.
  @override
  bool operator ==(Object other) {
    // 새로운 함수 확인 : identical() 함수는 두 객체를 메모리상에서 동일한 주소인지 비교
    return identical(this, other)
        || other is Book
            && this.runtimeType == other.runtimeType
            && this.title == other.title;
  }
  
  // 인스턴스 객체를 고유한 정수값으로 변경 처리
  @override
  int get hashCode => title.hashCode;

}