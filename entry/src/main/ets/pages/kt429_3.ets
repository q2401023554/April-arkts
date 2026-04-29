@Entry
@Component
struct Kt429_3 {
  // SwiperController 可以用代码控制 Swiper，比如上一页、下一页。
  private swiperController: SwiperController = new SwiperController()

  // 控制是否自动轮播，点击开关后会刷新 Swiper 的 autoPlay 属性。
  @State isAutoPlay: boolean = true
  @State currentIndex: number = 0

  build() {
    Column({ space: 20 }) {
      // Swiper 是轮播容器，里面的每一个子组件都是一页。
      Swiper(this.swiperController) {
        this.SwiperItem('第一页', '基础页面', '#FFB6C1')
        this.SwiperItem('第二页', '自动轮播', '#87CEFA')
        this.SwiperItem('第三页', '按钮切换', '#90EE90')
        this.SwiperItem('第四页', '循环播放', '#FFD700')
      }
      .width('90%')
      .height(240)
      .autoPlay(this.isAutoPlay)
      .interval(2000)
      .loop(true)
      .indicator(true)
      .duration(500)
      .onChange((index: number) => {
        this.currentIndex = index
      })

      Text(`当前第 ${this.currentIndex + 1} 页`)
        .fontSize(18)
        .fontColor('#666666')

      Row({ space: 12 }) {
        Button('上一页')
          .width(100)
          .onClick(() => {
            this.swiperController.showPrevious()
          })

        Button(this.isAutoPlay ? '暂停自动' : '开启自动')
          .width(110)
          .onClick(() => {
            this.isAutoPlay = !this.isAutoPlay
          })

        Button('下一页')
          .width(100)
          .onClick(() => {
            this.swiperController.showNext()
          })
      }
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#F5F5F5')
    .justifyContent(FlexAlign.Start)
  }

  @Builder
  SwiperItem(title: string, content: string, bgColor: string) {
    Column({ space: 12 }) {
      Text(title)
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.White)

      Text(content)
        .fontSize(18)
        .fontColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .borderRadius(12)
    .backgroundColor(bgColor)
  }
}
