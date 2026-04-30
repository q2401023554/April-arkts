@Entry
@Component
struct Zy429_2 {
  // 用 9 个编号生成九宫格图片项
  private imageList: string[] = ['1', '2', '3', '4', '5', '6', '7', '8', '9']

  build() {
    Column({ space: 16 }) {
      Text('任务2：图片九宫格')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .fontColor('#333333')

      Grid() {
        ForEach(this.imageList, (item: string) => {
          GridItem() {
            Column() {
              Image($r('app.media.startIcon'))
                .width('70%')
                .height('70%')
                .objectFit(ImageFit.Contain)

              Text('图片' + item)
                .fontSize(14)
                .fontColor('#666666')
                .margin({ top: 6 })
            }
            .width('100%')
            .height('100%')
            .justifyContent(FlexAlign.Center)
            .backgroundColor(Color.White)
            .borderRadius(12)
          }
        })
      }
      .columnsTemplate('1fr 1fr 1fr')
      .rowsTemplate('1fr 1fr 1fr')
      .columnsGap(10)
      .rowsGap(10)
      .width('90%')
      .height(360)
    }
    .width('100%')
    .height('100%')
    .padding({ top: 40 })
    .alignItems(HorizontalAlign.Center)
    .backgroundColor('#F5F5F5')
  }
}
