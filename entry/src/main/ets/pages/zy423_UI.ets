@Entry
@Component
struct Zy423_UI {
  @State showTask1: boolean = false

  build() {
    Column({ space: 15 }) {
      // 头像部分
      Image('http://trustcdn.baidu.com/officialcard/0dd2f60b7f179aa1a89c196e3958142e_originalsize.jpeg')
        .width(100)
        .height(100)
        .borderRadius(50)

      // 姓名部分
      Text('姓名')
        .fontSize(14)
        .fontColor('#333333')
        .margin({ top: 10 })
      Text('薄荷')
        .fontSize(26)
        .fontWeight(FontWeight.Bold)

      // 职位部分
      Text('职位')
        .fontSize(14)
        .fontColor('#333333')
        .margin({ top: 10 })
      Text('软件开发工程师')
        .fontSize(16)
        .fontColor('#666666')

      // 简介部分
      Text('简介')
        .fontSize(14)
        .fontColor('#333333')
        .margin({ top: 10 })
      Text('喜欢写代码，平时爱打羽毛球，目前在学习HarmonyOS开发。')
        .fontSize(14)
        .fontColor('#999999')
        .textAlign(TextAlign.Center)
        .width('80%')
    }
    .width('90%')
    .padding(20)
    .backgroundColor('#F5F5F5')
    .borderRadius(12)
    .justifyContent(FlexAlign.Center)
  }
}