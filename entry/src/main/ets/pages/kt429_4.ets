@Entry
@Component
struct Kt429_4 {
  // 控制 Tabs 切换页面。
  private controller: TabsController = new TabsController()

  // 记录当前选中的页面下标：首页是 0，发现是 1，消息是 2，我的是 3。
  @State currentIndex: number = 0

  build() {
    Column() {

      Text(`当前页面下标：${this.currentIndex}`)
        .fontSize(16)
        .fontColor('#666666')
        .margin({ bottom: 10 })

      Button('点击切换到首页')
        .width('50%')
        .onClick(() => {
          this.controller.changeIndex(0)
        })



      Tabs({ barPosition: BarPosition.End, controller: this.controller }) {
        TabContent() {
          this.PageContent('首页内容', Color.Pink)
        }
        .tabBar(this.TabBar('首页', 0))

        TabContent() {
          this.PageContent('发现内容', Color.Orange)
        }
        .tabBar(this.TabBar('发现', 1))

        TabContent() {
          this.PageContent('消息内容', Color.Green)
        }
        .tabBar(this.TabBar('消息', 2))

        TabContent() {
          this.PageContent('我的内容', Color.Gray)
        }
        .tabBar(this.TabBar('我的', 3))
      }
      .width('100%')
      .layoutWeight(1)
      .barMode(BarMode.Fixed)
      .onChange((index: number) => {
        this.currentIndex = index
      })


    }
    .height('100%')
    .width('100%')
    .backgroundColor('#F5F5F5')
  }

  // 自定义 tabBar：上面是图标，下面是文字。
  @Builder
  TabBar(title: string, index: number) {
    Column({ space: 4 }) {
      Image($r('app.media.startIcon'))
        .width(22)
        .height(22)
        .opacity(this.currentIndex === index ? 1 : 0.4)

      Text(title)
        .fontSize(12)
        .fontColor(this.currentIndex === index ? '#007DFF' : '#666666')
    }
    .width('100%')
    .height(56)
    .justifyContent(FlexAlign.Center)
  }

  // 每个 TabContent 里面显示的简单页面内容。
  @Builder
  PageContent(text: string, color: Color) {
    Column() {
      Text(text)
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor(color)
  }
}
