import 'package:equatable/equatable.dart';

void main () {

  print(const Post('홍길동전1') == const Post('홍길동전1')); // true
  print(const Post('홍길동전1'));
  print('---------------');
  print(identical(const Post('홍길동전1'), const Post('홍길동전1'))); // true
}

// 1. 가변 객체로 만들기
// 2. 가변 객체로 불변 객체 허용으로 만들고 싶다면?
class Post extends Equatable {
  final String title;
  const Post(this.title);

  @override // [] 객체 배열을 반환해라 --> 너가 사용하고 싶은 객체의 멤버 변수를 선정해서
  List<Object?> get props => [title];
  // 비교시 사용하고 싶은 속성을 배열로 반환한다.

}