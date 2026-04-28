@Entry
@Component
struct SettingPage {
  @State brightnessValue: number = 50
  @State autoAdjust: boolean = false
  @State sleepTime: string = '1分钟后'
  @State showSleepDialog: boolean = false

  build() {
    Column() {
      // 标题栏（返回按钮 + 标题）
      Row() {
        SymbolGlyph($r('sys.symbol.chevron_left'))
          .fontSize(30)
          .fontColor([Color.Black])
          .onClick(() => {
            this.getUIContext().getRouter().back()
          })

        Text('显示与亮度')
          .fontSize(22)
          .fontWeight(FontWeight.Bold)
          .margin({ left: 12 })
      }
      .width('100%')
      .padding({ left: 20, right: 20, top: 20, bottom: 20 })
      .alignItems(VerticalAlign.Center)

      // 设置列表
      Column({ space: 12 }) {
        // 第一个Row：亮度条和自动调节
        Column() {
          // 亮度调节滑动条
          Row() {
            SymbolGlyph($r('sys.symbol.sun_min'))
              .fontSize(24)
              .fontColor(['#666666'])

            Slider({
              value: this.brightnessValue,
              min: 0,
              max: 100,
              step: 1,
              style: SliderStyle.OutSet
            })
              .blockColor(Color.White)
              .blockSize({ width: 20, height: 20 })
              .trackColor('#CCCCCC')
              .selectedColor('#007AFF')
              .trackThickness(8)
              .showSteps(false)
              .showTips(false)
              .layoutWeight(1)
              .margin({ left: 12, right: 12 })
              .onChange((value: number) => {
                this.brightnessValue = value
              })

            SymbolGlyph($r('sys.symbol.sun_max'))
              .fontSize(24)
              .fontColor(['#666666'])
          }
          .width('100%')
          .padding({ left: 20, right: 20, top: 20, bottom: 15 })

          Divider()

          // 自动调节
          Row() {
            Text('自动调节')
              .fontSize(16)
              .fontColor(Color.Black)

            Blank()

            Toggle({ type: ToggleType.Switch, isOn: this.autoAdjust })
              .onChange((isOn: boolean) => {
                this.autoAdjust = isOn
              })
          }
          .width('100%')
          .height(50)
          .padding({ left: 20, right: 20 })
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width('100%')
        .backgroundColor(Color.White)
        .borderRadius(10)

        // 第二个Row：护眼模式和电子书模式
        Column() {
          // 护眼模式
          Row() {
            Text('护眼模式')
              .fontSize(16)
              .fontColor(Color.Black)

            Blank()

            Text('已关闭')
              .fontSize(16)
              .fontColor('#999999')

            SymbolGlyph($r('sys.symbol.chevron_right'))
              .fontSize(20)
              .fontColor(['#CCCCCC'])
              .margin({ left: 8 })
          }
          .width('100%')
          .height(50)
          .padding({ left: 20, right: 20 })

          Divider()

          // 电子书模式
          Row() {
            Column({ space: 4 }) {
              Text('电子书模式')
                .fontSize(16)
                .fontColor(Color.Black)
              Text('提供彩色和黑白两种阅读体验')
                .fontSize(12)
                .fontColor('#ff828282')
            }
            .alignItems(HorizontalAlign.Start)

            Blank()

            Text('已关闭')
              .fontSize(16)
              .fontColor('#999999')

            SymbolGlyph($r('sys.symbol.chevron_right'))
              .fontSize(20)
              .fontColor(['#CCCCCC'])
              .margin({ left: 8 })
          }
          .width('100%')
          .padding({ left: 20, right: 20, top: 15, bottom: 15 })
          .alignItems(VerticalAlign.Center)
        }
        .width('100%')
        .backgroundColor(Color.White)
        .borderRadius(10)

        // 第三个Row：字体大小和界面缩放
        Row() {
          Text('字体大小和界面缩放')
            .fontSize(16)
            .fontColor(Color.Black)

          Blank()

          SymbolGlyph($r('sys.symbol.chevron_right'))
            .fontSize(20)
            .fontColor(['#CCCCCC'])
        }
        .width('100%')
        .height(50)
        .padding({ left: 20, right: 20 })
        .backgroundColor(Color.White)
        .borderRadius(10)
        .onClick(() => {
          // 导航到字体大小设置页面
        })

        // 第四个：休眠
        Row() {
          Text('休眠')
            .fontSize(16)
            .fontColor(Color.Black)

          Blank()

          Row({ space: 8 }) {
            Text(this.sleepTime)
              .fontSize(16)
              .fontColor('#999999')
            SymbolGlyph($r('sys.symbol.chevron_right'))
              .fontSize(20)
              .fontColor(['#CCCCCC'])
          }
        }
        .width('100%')
        .height(50)
        .padding({ left: 20, right: 20 })
        .backgroundColor(Color.White)
        .borderRadius(10)
        .onClick(() => {
          this.showSleepDialog = true
        })
        .bindSheet(this.showSleepDialog, this.SleepDialogBuilder(), {
          height: 340,
          onDisappear: () => {
            this.showSleepDialog = false
          }
        })
      }
      .width('90%')
      .alignSelf(ItemAlign.Center)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }

  @Builder
  SleepDialogBuilder() {
    Column() {
      Text('选择休眠时间')
        .fontSize(18)
        .fontWeight(FontWeight.Medium)
        .margin({ top: 20, bottom: 20 })

      Column() {
        this.SleepOption('1分钟后')
        Divider()
        this.SleepOption('5分钟后')
        Divider()
        this.SleepOption('10分钟后')
      }
      .width('90%')
      .backgroundColor(Color.White)
      .borderRadius(10)
    }
    .width('100%')
  }

  @Builder
  SleepOption(time: string) {
    Row() {
      Text(time)
        .fontSize(16)
      Blank()
      if (this.sleepTime === time) {
        SymbolGlyph($r('sys.symbol.checkmark'))
          .fontSize(20)
          .fontColor([Color.Blue])
      }
    }
    .width('100%')
    .height(50)
    .padding({ left: 20, right: 20 })
    .onClick(() => {
      this.sleepTime = time
      this.showSleepDialog = false
    })
  }
}
