@Entry
@Component
struct Zy423_u5 {
  @State isFavorite: boolean = false

  build() {
    Column({ space: 20 }) {
      Text('商品信息')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 40 })

      // 商品图片
      Image('https://i1.hdslb.com/bfs/archive/6a8ea613d68f11505481f2c47ee4ae130b4f9775.jpg')
        .height(300)
        .borderRadius(10)

      // 商品名称
      Text('游戏月卡')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)

      // 价格和收藏按钮
      Row({ space: 100 }) {
        Text('¥68.00')
          .fontSize(28)
          .fontColor('#FF0000')
          .fontWeight(FontWeight.Bold)

        Button(this.isFavorite ? '已收藏' : '收藏')
          .width(100)
          .height(40)
          .backgroundColor(this.isFavorite ? '#CCCCCC' : '#FF6B00')
          .onClick(() => {
            this.isFavorite = !this.isFavorite
          })
      }
      .width('80%')
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 20 })
    }
    .width('100%')
    .height('100%')
  }
}