@Entry
@Component
struct Zy429_4 {
  // 控制 Tabs 切换页面。
  private controller: TabsController = new TabsController()

  // 记录当前选中的标签页：首页0，分类1，购物车2，我的3。
  @State currentIndex: number = 0

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.controller }) {
        TabContent() {
          this.PageContent('首页', '精选商品、热门活动和推荐内容', '#4A90E2')
        }
        .tabBar(this.HomeTabBar())

        TabContent() {
          this.PageContent('分类', '手机数码、电脑办公、生活用品', '#27AE60')
        }
        .tabBar(this.CategoryTabBar())

        TabContent() {
          this.PageContent('购物车', '查看已添加商品，确认数量和价格', '#E67E22')
        }
        .tabBar(this.CartTabBar())

        TabContent() {
          this.PageContent('我的', '订单、收藏、地址和账号设置', '#8E44AD')
        }
        .tabBar(this.MineTabBar())
      }
      .width('100%')
      .height('100%')
      .barMode(BarMode.Fixed)
      .onChange((index: number) => {
        this.currentIndex = index
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }

  @Builder
  HomeTabBar() {
    this.TabBar('首页', 0, $r('sys.symbol.house'))
  }

  @Builder
  CategoryTabBar() {
    this.TabBar('分类', 1, $r('sys.symbol.square_grid_2x2'))
  }

  @Builder
  CartTabBar() {
    this.TabBar('购物车', 2, $r('sys.symbol.cart'))
  }

  @Builder
  MineTabBar() {
    this.TabBar('我的', 3, $r('sys.symbol.person'))
  }

  @Builder
  TabBar(title: string, index: number, icon: Resource) {
    Column({ space: 4 }) {
      SymbolGlyph(icon)
        .fontSize(24)
        .fontColor([this.currentIndex === index ? '#007DFF' : '#999999'])

      Text(title)
        .fontSize(12)
        .fontColor(this.currentIndex === index ? '#007DFF' : '#666666')
    }
    .width('100%')
    .height(56)
    .justifyContent(FlexAlign.Center)
  }

  @Builder
  PageContent(title: string, detail: string, bgColor: string) {
    Column({ space: 16 }) {
      // Image($r('app.media.startIcon'))
      //   .width(86)
      //   .height(86)
      //   .objectFit(ImageFit.Contain)

      Text(title)
        .fontSize(32)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.White)

      Text(detail)
        .fontSize(16)
        .fontColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .padding(24)
    .justifyContent(FlexAlign.Center)
    .backgroundColor(bgColor)
  }
}
