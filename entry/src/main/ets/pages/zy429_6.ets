@Entry
@Component
struct Zy429_6 {
  private controller: TabsController = new TabsController()

  @State currentTab: number = 0
  @State currentBanner: number = 0

  private categories: ShopCategory[] = [
    new ShopCategory('手机', '手', '#4A90E2'),
    new ShopCategory('电脑', '电', '#27AE60'),
    new ShopCategory('家电', '家', '#E67E22'),
    new ShopCategory('服饰', '衣', '#8E44AD'),
    new ShopCategory('美妆', '美', '#E84393'),
    new ShopCategory('生鲜', '鲜', '#16A085'),
    new ShopCategory('图书', '书', '#2D3436'),
    new ShopCategory('更多', '更', '#607D8B')
  ]

  private products: ShopProduct[] = [
    new ShopProduct('智能手机', '高清屏幕 长续航', '¥3999', '热销', '#4A90E2'),
    new ShopProduct('无线蓝牙耳机', '主动降噪 轻巧佩戴', '¥299', '新品', '#E67E22'),
    new ShopProduct('智能手表', '运动监测 健康提醒', '¥699', '推荐', '#27AE60'),
    new ShopProduct('轻薄笔记本', '学习办公 高效便携', '¥4999', '爆款', '#8E44AD')
  ]

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.controller }) {
        TabContent() {
          this.HomePage()
        }
        .tabBar(this.HomeTabBar())

        TabContent() {
          this.SimplePage('分类', '查看不同类型的商品')
        }
        .tabBar(this.CategoryTabBar())

        TabContent() {
          this.SimplePage('购物车', '已选商品会显示在这里')
        }
        .tabBar(this.CartTabBar())

        TabContent() {
          this.SimplePage('我的', '订单、收藏和地址管理')
        }
        .tabBar(this.MineTabBar())
      }
      .width('100%')
      .height('100%')
      .barMode(BarMode.Fixed)
      .onChange((index: number) => {
        this.currentTab = index
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F7FA')
  }

  @Builder
  HomePage() {
    Column() {
      this.SearchHeader()

      List({ space: 14 }) {
        ListItem() {
          this.BannerArea()
        }

        ListItem() {
          this.CategoryGrid()
        }

        ListItem() {
          Text('猜你喜欢')
            .fontSize(22)
            .fontWeight(FontWeight.Bold)
            .fontColor('#202124')
            .width('100%')
            .padding({ left: 18, right: 18 })
        }

        ForEach(this.products, (item: ShopProduct) => {
          ListItem() {
            this.ProductRow(item)
          }
        })
      }
      .width('100%')
      .layoutWeight(1)
      .padding({ left: 12, right: 12, bottom: 12 })
      .scrollBar(BarState.Off)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F7FA')
  }

  @Builder
  SearchHeader() {
    Column({ space: 12 }) {
      Row() {
        Text('校园商城')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .fontColor('#202124')
          .layoutWeight(1)

        Text('会员')
          .fontSize(13)
          .fontColor(Color.White)
          .padding({ left: 10, right: 10, top: 5, bottom: 5 })
          .backgroundColor('#FF6B35')
          .borderRadius(14)
      }
      .width('100%')

      Row({ space: 8 }) {
        Text('搜')
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .fontColor('#999999')

        Text('搜索手机、电脑、生活好物')
          .fontSize(14)
          .fontColor('#888888')
          .layoutWeight(1)
      }
      .width('100%')
      .height(42)
      .padding({ left: 14, right: 14 })
      .backgroundColor(Color.White)
      .borderRadius(21)
    }
    .width('100%')
    .padding({ left: 18, right: 18, top: 26, bottom: 14 })
  }

  @Builder
  BannerArea() {
    Swiper() {
      this.BannerItem('开学焕新季', '数码好物限时优惠', '#4A90E2')
      this.BannerItem('生活精选', '宿舍日用一站购齐', '#27AE60')
      this.BannerItem('会员专享', '下单立减 最高 80 元', '#FF6B35')
    }
    .width('100%')
    .height(160)
    .autoPlay(true)
    .interval(2500)
    .indicator(true)
    .loop(true)
    .duration(500)
    .borderRadius(16)
    .onChange((index: number) => {
      this.currentBanner = index
    })
  }

  @Builder
  BannerItem(title: string, desc: string, bgColor: string) {
    Row() {
      Column({ space: 10 }) {
        Text(title)
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)

        Text(desc)
          .fontSize(15)
          .fontColor('#F2F7FF')

        Text('立即查看')
          .fontSize(13)
          .fontColor(bgColor)
          .padding({ left: 12, right: 12, top: 6, bottom: 6 })
          .backgroundColor(Color.White)
          .borderRadius(15)
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)

      Image($r('app.media.startIcon'))
        .width(88)
        .height(88)
        .objectFit(ImageFit.Contain)
    }
    .width('100%')
    .height('100%')
    .padding(18)
    .backgroundColor(bgColor)
  }

  @Builder
  CategoryGrid() {
    Grid() {
      ForEach(this.categories, (item: ShopCategory) => {
        GridItem() {
          Column({ space: 8 }) {
            Text(item.iconText)
              .width(42)
              .height(42)
              .borderRadius(21)
              .backgroundColor(item.color)
              .fontSize(20)
              .fontWeight(FontWeight.Bold)
              .fontColor(Color.White)
              .textAlign(TextAlign.Center)

            Text(item.name)
              .fontSize(13)
              .fontColor('#333333')
          }
          .width('100%')
          .height('100%')
          .justifyContent(FlexAlign.Center)
        }
      })
    }
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr')
    .columnsGap(8)
    .rowsGap(8)
    .width('100%')
    .height(170)
    .padding(12)
    .backgroundColor(Color.White)
    .borderRadius(16)
  }

  @Builder
  ProductRow(item: ShopProduct) {
    Row({ space: 12 }) {
      Column() {
        Text(item.name.substring(0, 1))
          .fontSize(32)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)
      }
      .width(92)
      .height(92)
      .justifyContent(FlexAlign.Center)
      .backgroundColor(item.color)
      .borderRadius(14)

      Column({ space: 8 }) {
        Row() {
          Text(item.name)
            .fontSize(18)
            .fontWeight(FontWeight.Medium)
            .fontColor('#202124')
            .layoutWeight(1)

          Text(item.tag)
            .fontSize(12)
            .fontColor('#FF6B35')
            .padding({ left: 8, right: 8, top: 3, bottom: 3 })
            .backgroundColor('#FFF0E8')
            .borderRadius(10)
        }
        .width('100%')

        Text(item.desc)
          .fontSize(14)
          .fontColor('#777777')

        Text(item.price)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontColor('#E53935')
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .padding(14)
    .backgroundColor(Color.White)
    .borderRadius(16)
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
        .fontColor([this.currentTab === index ? '#007DFF' : '#999999'])

      Text(title)
        .fontSize(12)
        .fontColor(this.currentTab === index ? '#007DFF' : '#666666')
    }
    .width('100%')
    .height(56)
    .justifyContent(FlexAlign.Center)
  }

  @Builder
  SimplePage(title: string, desc: string) {
    Column({ space: 14 }) {
      Text(title)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .fontColor('#202124')

      Text(desc)
        .fontSize(16)
        .fontColor('#666666')
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor('#F5F7FA')
  }
}

class ShopCategory {
  name: string = ''
  iconText: string = ''
  color: string = ''

  constructor(name: string, iconText: string, color: string) {
    this.name = name
    this.iconText = iconText
    this.color = color
  }
}

class ShopProduct {
  name: string = ''
  desc: string = ''
  price: string = ''
  tag: string = ''
  color: string = ''

  constructor(name: string, desc: string, price: string, tag: string, color: string) {
    this.name = name
    this.desc = desc
    this.price = price
    this.tag = tag
    this.color = color
  }
}
