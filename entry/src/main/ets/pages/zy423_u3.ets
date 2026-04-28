@Entry
@Component
struct Zy423_u3 {
  build() {
    Column({ space: 20 }) {
      // 主按钮
      Button('主按钮')
        .width('80%')
        .height(50)
        .backgroundColor('#007DFF')
        .borderRadius(25)
        .fontSize(18)

      // 次要按钮
      Button('次要按钮')
        .width('80%')
        .height(50)
        .backgroundColor(Color.Transparent)
        .borderWidth(2)
        .borderColor('#007DFF')
        .borderRadius(8)
        .fontSize(18)
        .fontColor('#007DFF')

      // 危险按钮
      Button('危险按钮')
        .width('80%')
        .height(50)
        .backgroundColor('#FF0000')
        .borderRadius(8)
        .fontSize(18)

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}