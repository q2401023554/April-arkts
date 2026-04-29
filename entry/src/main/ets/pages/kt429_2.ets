@Entry
@Component
struct Kt429_2 {
  @State message: string = 'Hello World';
  @State arr:string[]='123456789'.split('')

  build() {
    Column(){
      Grid(){
        ForEach(this.arr,(e:string)=>{
          GridItem(){
            Text(e)
          }.backgroundColor(Color.Pink)
          .width(100).height(100)
        })
      }.columnsGap(5)
      .rowsGap(5)
      .rowsTemplate('1fr 1fr')
      .columnsTemplate('1fr 1fr')
      .width('100%')
      .height(300n )
    }
    .height('100%')
    .width('100%')
  }
}