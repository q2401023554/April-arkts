@Entry
@Component
struct Zy425_u4 {
  @State shenSeMoShi: boolean = false
  @State xiaoXiTongZhi: boolean = true
  @State yinSiBaoHu: boolean = false

  build() {
    Column({ space: 20 }) {
      Text('设置')
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 40, bottom: 20 })

      // 深色模式
      Row() {
        Text('深色模式')
          .fontSize(16)
        Blank()
        Toggle({ type: ToggleType.Switch, isOn: this.shenSeMoShi })
          .onChange((isOn: boolean) => {
            this.shenSeMoShi = isOn
          })
      }
      .width('90%')
      .height(60)
      .padding({ left: 20, right: 20 })
      .backgroundColor(Color.White)
      .borderRadius(10)

      // 消息通知
      Row() {
        Text('消息通知')
          .fontSize(16)
        Blank()
        Toggle({ type: ToggleType.Switch, isOn: this.xiaoXiTongZhi })
          .onChange((isOn: boolean) => {
            this.xiaoXiTongZhi = isOn
          })
      }
      .width('90%')
      .height(60)
      .padding({ left: 20, right: 20 })
      .backgroundColor(Color.White)
      .borderRadius(10)

      // 隐私保护
      Row() {
        Text('隐私保护')
          .fontSize(16)
        Blank()
        Toggle({ type: ToggleType.Switch, isOn: this.yinSiBaoHu })
          .onChange((isOn: boolean) => {
            this.yinSiBaoHu = isOn
          })
      }
      .width('90%')
      .height(60)
      .padding({ left: 20, right: 20 })
      .backgroundColor(Color.White)
      .borderRadius(10)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F0F0F0')
  }
}