@Entry
@Component
struct ProgressPage {
  @State total: number = 100
  @State current: number = 20

  build() {
    Column({ space: 20 }) {
      // 滑块控制进度 - InSet样式
      Slider({
        min: 0,
        max: this.total,
        value: this.current,
        style: SliderStyle.InSet,
        step: 5
      })
        .width('80%')
        .onChange((value: number) => {
          this.current = value
        })

      // 滑块控制进度 - OutSet样式
      Slider({
        min: 0,
        max: this.total,
        value: this.current,
        style: SliderStyle.OutSet
      })
        .width('80%')
        .onChange((value: number) => {
          this.current = value
        })

      // 滑块控制进度 - NONE样式
      Slider({
        min: 0,
        max: this.total,
        value: this.current,
        style: SliderStyle.NONE,
        direction:Axis.Vertical
      })
        .width(260).height(130)
        .showTips(true)
        .onChange((value: number) => {
          this.current = value
        })

      Text(`当前进度：${this.current.toFixed(0)}/${this.total}`)
        .fontSize(16)

      // // 线性进度条
      // Progress({ value: this.current, total: this.total, type: ProgressType.Linear })
      //   .width('80%')
      //   .height(20)
      //
      // // 环形进度条
      // Progress({ value: this.current, total: this.total, type: ProgressType.Ring })
      //   .width(150)
      //   .height(150)
      //   .style({ strokeWidth: 15 })
      //
      // // 刻度进度条
      // Progress({ value: this.current, total: this.total, type: ProgressType.ScaleRing })
      //   .width(150)
      //   .height(150)
      //   .style({ strokeWidth: 15 })
      //
      // // 胶囊进度条
      // Progress({ value: this.current, total: this.total, type: ProgressType.Capsule })
      //   .width('80%')
      //   .height(30)

      Badge({
        count: this.current,
        maxCount: 66,
        position: BadgePosition.Left,
        style:{}
      }){
      Button('测试')
    }
      Badge({
        count: this.current,
        maxCount: 66,
        position: BadgePosition.RightTop,
        style:{
          fontSize:12
        }
      }) {
        Image($r('app.media.startIcon')).width(50)
      }

      Badge({
        value:'New',
        position:BadgePosition.RightTop,
        style:{}
      }){
      Text('hello world')
      }

      LoadingProgress()

      // 按钮
      Row({ space: 20 }) {
        Button('减少进度')
          .width(120)
          .height(50)
          .onClick(() => {
            if (this.current > 0) {
              this.current -= 10
            }
          })


        Button('增加进度')
          .width(120)
          .height(50)
          .onClick(() => {
            if (this.current < this.total) {
              this.current += 10
            }
          })
      }
      .margin({ top: 20 })
    }
    .width('100%')
    .height('100%')
  }
}
