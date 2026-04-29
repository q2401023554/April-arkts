@Entry
@Component
struct Kt429_3 {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Swiper(){
        Text('1')
        Text('2')
        Text('3')
      }
    }
    .height('100%').backgroundColor(Color.Pink)
    .width('100%')
  }
}