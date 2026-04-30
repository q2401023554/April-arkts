@Entry
@Component
struct Zy429_3 {
  // 记录当前轮播页，用来显示页码。
  @State currentIndex: number = 0

  build() {
    Column({ space: 18 }) {
      Text('任务3：商品轮播图')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .fontColor('#333333')

      Swiper() {
        this.ProductItem(
          '手机',
          '',
          '到手价：￥3999',
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=900&q=80',
          '#4A90E2'
        )
        this.ProductItem(
          '耳机',
          '',
          '到手价：￥299',
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=80',
          '#E67E22'
        )
        this.ProductItem(
          '智能手表',
          '',
          '到手价：￥899',
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=80',
          '#27AE60'
        )
        this.ProductItem(
          '笔记本电脑',
          '',
          '到手价：￥4999',
          'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=900&q=80',
          '#8E44AD'
        )
      }
      .width('92%')
      .height(360)
      .autoPlay(true)
      .interval(2500)
      .indicator(true)
      .loop(true)
      .duration(500)
      .onChange((index: number) => {
        this.currentIndex = index
      })

      Text('当前第 ' + (this.currentIndex + 1).toString() + ' / 4 件商品')
        .fontSize(16)
        .fontColor('#666666')
    }
    .width('100%')
    .height('100%')
    .padding({ top: 40 })
    .alignItems(HorizontalAlign.Center)
    .backgroundColor('#F5F5F5')
  }

  @Builder
  ProductItem(name: string, detail: string, price: string, imageUrl: string, bgColor: string) {
    Column({ space: 12 }) {
      Image(imageUrl)
        .width('100%')
        .height(190)
        .objectFit(ImageFit.Cover)
        .borderRadius(14)

      Column({ space: 8 }) {
        Text(name)
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)

        Text(detail)
          .fontSize(15)
          .fontColor(Color.White)

        Text(price)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontColor('#FFF8DC')
      }
      .width('100%')
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .height('100%')
    .padding(16)
    .backgroundColor(bgColor)
    .borderRadius(18)
  }
}
